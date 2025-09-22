import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../base/app_constants.dart';
import '../base/firebase_realtime_db.dart';
import '../base/logger_utils.dart';
import '../base/utility.dart';
import 'filled_button_widget.dart';
import 'input_field_widget.dart';

class UserInfoWidget extends StatefulWidget {

  @override
  State<UserInfoWidget> createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final FirebaseRealtimeDb _firebaseRealtimeDb = FirebaseRealtimeDb();

  final Utility _utility = Utility();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _logger = LoggerUtils();

  final _TAG = "user info widget!! :D";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(

        mainAxisSize: MainAxisSize.min,

        children: [
          //name
          InputFieldWidget(
            displayHintText: "What should we call you?",
            displayIcon: Icons.person_2_rounded,
            inputController: nameController,
            inputType: TextInputType.name,
          ),

          SizedBox(
              height: 21
          ),

          //email
          InputFieldWidget(
            displayHintText: "Email",
            displayIcon: Icons.email_rounded,
            inputController: emailController,
            inputType: TextInputType.emailAddress,
          ),

          SizedBox(
              height: 21
          ),

          //save button
          SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            child: FilledButtonWidget(
                buttonText: "Save",
              onButtonPressed: () async{
                  _logger.log(_TAG, "Name Entered: ${nameController.text}");
                  _logger.log(_TAG, "Email Entered: ${emailController.text}");
                  if(_formKey.currentState != null && _formKey.currentState!.validate()){

                  }
                  /*bool isEmailCorrect = _utility.validateEmail(emailController.text);
                  if(!isEmailCorrect){
                    showTopSnackBar("Please enter a valid email!", context);
                    return;
                  }
                  String uniqueID = Uuid().v1();
                  SharedPreferences autoRemember = await SharedPreferences.getInstance();
                  await autoRemember.setString(AppConstants.kUserUniqueID, uniqueID ?? '');
                  await autoRemember.setString(AppConstants.kUserName, nameController.text ?? '');
                  await autoRemember.setString(AppConstants.kUserEmail, emailController.text ?? '');
                  await autoRemember.setBool(AppConstants.kUserSignInSuccess, true);
                  await _firebaseRealtimeDb.createAUserWithoutSignIn(uniqueID, nameController.text, emailController.text);*/
                  //Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }

  void showTopSnackBar(
      String message, BuildContext context, {
        bool isSuccess = true,
        Color? color,
        Duration? duration,
      }) {
    final backgroundColor =
        color ?? (isSuccess ? Colors.green[600] : Colors.red[600]);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: duration ?? const Duration(milliseconds: 500),
        backgroundColor: Colors.transparent,
        content: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 100,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
