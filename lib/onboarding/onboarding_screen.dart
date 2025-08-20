import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:ruhaniapp/base/app_constants.dart';
import 'package:ruhaniapp/base/firebase_utils.dart';
import 'package:ruhaniapp/base/image_constants.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/commonwidgets/display_loading_widget.dart';
import 'package:ruhaniapp/commonwidgets/empty_widget.dart';
import 'package:ruhaniapp/commonwidgets/filled_button_widget.dart';
import 'package:ruhaniapp/injector/injection.dart';
import 'package:ruhaniapp/onboarding/on_boarding_bloc.dart';
import 'package:ruhaniapp/onboarding/states/onboarding_screen_states.dart';
import 'package:ruhaniapp/router/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../base/firebase_realtime_db.dart';
import 'events/onboarding_screen_events.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  FirebaseUtils firebaseUtils = FirebaseUtils();
  final _logger = locator<LoggerUtils>();
  final _TAG = "OnBoardingScreen";
  final _firebaseRealtimeDb = FirebaseRealtimeDb();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => OnBoardingBloc()..add(const OnboardingScreenEvents.InitializeOnboardingEvent()),
      child: BlocConsumer<OnBoardingBloc, OnboardingScreenStates>(
          builder: (BuildContext context, OnboardingScreenStates state){
            return state.when(
                displayOnboardingView: (){
                  return Scaffold(
                    body: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Lottie.asset(ImageConstants.kloadingjason, height: 212),
                              Image.asset(
                                ImageConstants.klogowithoutbg,
                                height: 310,
                                width: 350,
                              ),
                              const Text(
                                AppConstants.kSignInDescription,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        )),
                    bottomNavigationBar: SizedBox(
                      height: 180,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/googleLogo.png",
                                  width: 37,
                                  height: 37,
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                FilledButtonWidget(
                                  buttonText: "Sign in with Google",
                                  onButtonPressed: () async {
                                    _logger.log(_TAG, "Sign in button was pressed");
                                    BlocProvider.of<OnBoardingBloc>(context).add(OnboardingScreenEvents.StartGoogleSignInEvent());
                                  },
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 220,
                              child: SignInWithAppleButton(
                                onPressed: () async {
                                  BlocProvider.of<OnBoardingBloc>(context).add(OnboardingScreenEvents.StartAppleSignInEvent());
                                  await firebaseUtils.startAppleSignIn().then((_) async{
                                    await context.router.replace(const IntroRoute());
                                  });
                                },
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },
                loadingView: (){
                  return DisplayLoadingWidget();
                },
                errorView: (String){
                  return EmptyWidget();
                },
                startNextScreen: () {
                  return DisplayLoadingWidget();
                }
            );
          },
          listener: (BuildContext context, OnboardingScreenStates state){
              state.whenOrNull(
                startNextScreen: (){
                  context.router.replace(const IntroRoute());
                }
              );
          }
      ),
    );
  }
}
