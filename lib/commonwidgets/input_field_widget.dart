import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../base/color_constants.dart';

class InputFieldWidget extends StatelessWidget {

  final String displayHintText;
  final IconData displayIcon;

  const InputFieldWidget({super.key, required this.displayHintText, required this.displayIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(displayIcon),
        hintText: displayHintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(
                color: ColorConstants.klogoBlackColor,
                width: 2
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(
                color: ColorConstants.klogoOrangeColor,
                width: 2
            )
        ),
      ),
    );
  }
}
