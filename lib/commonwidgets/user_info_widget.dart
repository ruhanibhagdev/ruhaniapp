import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/logger_utils.dart';

import 'filled_button_widget.dart';
import 'input_field_widget.dart';

class UserInfoWidget extends StatelessWidget {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final _logger = LoggerUtils();
  final _TAG = "user info widget!! :D";

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisSize: MainAxisSize.min,

      children: [
        //name
        InputFieldWidget(
          displayHintText: "What should we call you?",
          displayIcon: Icons.person_2_rounded,
          inputController: nameController,
        ),

        SizedBox(
            height: 21
        ),

        //email
        InputFieldWidget(
          displayHintText: "Email",
          displayIcon: Icons.email_rounded,
          inputController: emailController,
        ),

        SizedBox(
            height: 21
        ),

        //save button
        SizedBox(
          width: MediaQuery.of(context).size.width - 20,
          child: FilledButtonWidget(
              buttonText: "Save",
            onButtonPressed: (){
                _logger.log(_TAG, "Name Entered: ${nameController.text}");
                _logger.log(_TAG, "Email Entered: ${emailController.text}");
            },
          ),
        )
      ],
    );
  }
}
