import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:rufit/base/color_constants.dart';
import 'package:rufit/onboarding/states/onboarding_screen_states.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../base/app_constants.dart';
import '../base/firebase_realtime_db.dart';
import '../base/firebase_utils.dart';
import '../base/image_constants.dart';
import '../base/logger_utils.dart';
import '../commonwidgets/display_loading_widget.dart';
import '../commonwidgets/empty_widget.dart';
import '../commonwidgets/filled_button_widget.dart';
import '../injector/injection.dart';
import '../router/app_router.dart';
import 'events/onboarding_screen_events.dart';
import 'on_boarding_bloc.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  FirebaseUtils firebaseUtils = FirebaseUtils();
  final _logger = locator<LoggerUtils>();
  final _TAG = "OnBoardingScreen";
  final _firebaseRealtimeDb = FirebaseRealtimeDb();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnBoardingBloc()..add(const OnboardingScreenEvents.InitializeOnboarding()),
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
                            GestureDetector(
                              onTap: (){
                                _logger.log(_TAG, "Sign in button was pressed");
                                BlocProvider.of<OnBoardingBloc>(context).add(OnboardingScreenEvents.StartGoogleSignIn());
                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Colors.black
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/googleLogo.png",
                                      width: 25,
                                      height: 25,
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      "Sign in with Google",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.white
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 40,
                              child: SignInWithAppleButton(
                                onPressed: () async {
                                  BlocProvider.of<OnBoardingBloc>(context).add(OnboardingScreenEvents.StartAppleSignIn());
                                  await firebaseUtils.startAppleSignIn().then((_) async{
                                    SharedPreferences autoRemember = await SharedPreferences.getInstance();
                                    await autoRemember.setBool(AppConstants.kUserSignInSuccess, true);
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
                },

              );
          }
      ),
    );
  }
}
