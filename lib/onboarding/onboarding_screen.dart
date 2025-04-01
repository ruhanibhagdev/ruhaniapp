import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ruhaniapp/base/app_constants.dart';
import 'package:ruhaniapp/base/firebase_utils.dart';
import 'package:ruhaniapp/commonwidgets/filled_button_widget.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget{

  FirebaseUtils firebaseUtils = FirebaseUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset(
                  "assets/lottiefiles/broKohli.json",
                  height: 212
              ),
              Image.asset(
                  "assets/images/rufitLogoWithoutBackground.png",
                  height: 310,
                  width: 350,
              ),
              Text(
                  AppConstants.kSignInDescription,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Row(
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
                  buttonText: "Sign in with Google"
              ),
            ],
          ),
        ),
      ),
    );
  }
}