import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rufit/commonwidgets/filled_button_widget.dart';
import 'package:rufit/permission/permission_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../base/app_constants.dart';
import '../base/database.dart';
import '../base/firebase_realtime_db.dart';
import '../base/firebase_utils.dart';
import '../base/logger_utils.dart';
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
          child:FilledButtonWidget(
              buttonText: "Ask permission",
              onButtonPressed: (){
                PermissionUtils().getMicrophonePermission();
              },
          )
        ),
      ),
    );
  }
}