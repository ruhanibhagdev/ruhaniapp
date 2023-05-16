import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/color_constants.dart';

class SplashScreenPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.klogoBackgroundColor,
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      )
    );
  }
}