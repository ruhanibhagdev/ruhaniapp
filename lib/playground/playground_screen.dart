import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/color_constants.dart';
import 'package:ruhaniapp/base/firebase_realtime_db.dart';
import 'package:ruhaniapp/base/firebase_utils.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/commonwidgets/input_field_widget.dart';
import 'package:ruhaniapp/lap_info/lap_info_model.dart';
import 'package:ruhaniapp/onboarding/user_registration_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../base/app_constants.dart';
import '../base/database.dart';
import '../commonwidgets/app_icons_widget.dart';

@RoutePage()
class PlaygroundScreen extends StatelessWidget{

  final database = AppDb();

  final _firebaseUtils = FirebaseUtils();
  final _firebaseRealtimeDb = FirebaseRealtimeDb();

  final _logger = LoggerUtils();
  final _TAG = "TAG - playground";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:
          AppIconsWidget(
            iconToDisplay: Icons.record_voice_over,
            buttonText: "Use Voice",
            onButtonPress: (){
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                ),
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      mainAxisSize: MainAxisSize.min,

                      children: [
                        //name
                        InputFieldWidget(
                          displayHintText: "What should we call you?",
                          displayIcon: Icons.person_2_rounded,
                        ),

                        SizedBox(
                            height: 21
                        ),

                        //email
                        InputFieldWidget(
                          displayHintText: "Email",
                          displayIcon: Icons.email_rounded,
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),


        ),
      ),
    );
  }
}