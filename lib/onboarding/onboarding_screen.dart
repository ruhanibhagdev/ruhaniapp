import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ruhaniapp/base/app_constants.dart';
import 'package:ruhaniapp/base/firebase_utils.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/commonwidgets/filled_button_widget.dart';
import 'package:ruhaniapp/injector/injection.dart';
import 'package:ruhaniapp/router/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../base/firebase_realtime_db.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  FirebaseUtils firebaseUtils = FirebaseUtils();
  final _logger = locator<LoggerUtils>();
  final _TAG = "OnBoardingScreen";
  final _firebaseRealtimeDb = FirebaseRealtimeDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset("assets/lottiefiles/broKohli.json", height: 212),
            Image.asset(
              "assets/images/rufitLogoWithoutBackground.png",
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
                      await firebaseUtils
                          .initializeFirebase()
                          .then((User? currentUser) async {
                        if (currentUser == null) {

                          await firebaseUtils.startGoogleSignIn();
                        } else {
                          _logger.log(_TAG, "Current user details $currentUser");
                          ///Fetch only the google data
                          /*var googleUser = currentUser.providerData.firstWhere((UserInfo currentUserInfo) => currentUserInfo.providerId == "google.com");
                          SharedPreferences autoRemember = await SharedPreferences.getInstance();
                          await autoRemember.setString(AppConstants.kUserUniqueID, currentUser.uid);
                          await autoRemember.setString(AppConstants.kUserName, googleUser.displayName!);
                          await autoRemember.setString(AppConstants.kUserEmail, googleUser.email!);
                          await autoRemember.setBool(AppConstants.kUserSignInSuccess, true);
                          await _firebaseRealtimeDb.createAUser(currentUser);
                          _logger.log(_TAG, "Storing user details $currentUser");
                          await context.router.replace(const IntroRoute());*/
                        }
                      });
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
  }
}
