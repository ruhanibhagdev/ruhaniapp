import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../base/color_constants.dart';

class InputFieldWidget extends StatelessWidget {

  final String displayHintText;
  final IconData displayIcon;
  final TextEditingController inputController;

  const InputFieldWidget({super.key, required this.displayHintText, required this.displayIcon, required this.inputController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
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
