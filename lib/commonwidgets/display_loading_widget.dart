import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ruhaniapp/base/image_constants.dart';

class DisplayLoadingWidget extends StatelessWidget {
  const DisplayLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(ImageConstants.kloadingjason, height: 212),
      ),
    );
  }
}
