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
            },
          ),


        ),
      ),
    );
  }
}