import 'package:flutter/material.dart';

import '../base/color_constants.dart';

class FilledButtonWidget extends StatelessWidget {
  String buttonText;
  VoidCallback? onButtonPressed;
  Color buttonColor;
  bool isDisabled;

  FilledButtonWidget(
      {required this.buttonText, this.onButtonPressed, this.buttonColor = ColorConstants
          .klogoOrangeColor, this.isDisabled = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)
            )
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            isDisabled ? Colors.grey : buttonColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        // text color
        textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
                color: Colors.white
            )
        ),

      ),
      onPressed: () {
        if (onButtonPressed != null) {
          onButtonPressed!();
        }
      },
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white
        ),
      ),
    );
  }
}