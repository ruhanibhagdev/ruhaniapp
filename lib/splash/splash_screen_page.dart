import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("asset/images/logo.png"),
      )
    );
  }
}