import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../base/color_constants.dart';
import '../base/utility.dart';

class InputFieldWidget extends StatelessWidget {

  final String displayHintText;
  final IconData displayIcon;
  final TextEditingController inputController;
  final Utility _utility = Utility();
  final TextInputType inputType;
  InputFieldWidget({super.key, required this.displayHintText, required this.displayIcon, required this.inputController, required this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      keyboardType: inputType,
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
      validator: (String? input){
        bool isValid = false;
        if(inputType == TextInputType.emailAddress){
          isValid = _utility.validateEmail(input?? "empty");
          if(isValid){
            return null;
          }
          else{
            return "Please enter a valid email!";
          }
        }
        else{
          isValid = _utility.validateName(input?? "empty");
          if(isValid){
            return null;
          }
          else{
            return "Please enter a valid name!";
          }
        }
      },
    );
  }
}
