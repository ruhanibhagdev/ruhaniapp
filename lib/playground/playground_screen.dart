import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/firebase_realtime_db.dart';
import 'package:ruhaniapp/base/firebase_utils.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/lap_info/lap_info_model.dart';
import 'package:ruhaniapp/onboarding/user_registration_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../base/app_constants.dart';
import '../base/database.dart';

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
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () async{
                    FirebaseRealtimeDb realtimeDb = FirebaseRealtimeDb();
                    SharedPreferences autoRemember = await SharedPreferences.getInstance();
                    String? userID = await autoRemember.getString(AppConstants.kUserUniqueID);
                    if(userID != null){
                      LapInfoModel currentLap = LapInfoModel(
                          lapNumber: 1,
                          hours: 500,
                          minutes: 42,
                          seconds: 16,
                          lapDateTime: DateTime.now().toString()
                      );
                      realtimeDb.saveALap(currentLap);
                    }
                  },
                  child: Text("Save")
              ),
              ElevatedButton(
                  onPressed: () async{
                    UserRegistrationDetails kabutarUser = UserRegistrationDetails(userID: "555", name: "Kabutar", emailID: "kohliflower.kabutar@gmail.com");
                    kabutarUser.toJson();
                    print(kabutarUser.toJson());
                    FirebaseRealtimeDb realtimeDb = FirebaseRealtimeDb();
                    User? currentUser = await FirebaseUtils().initializeFirebase();
                    realtimeDb.createAUser(currentUser!);
                  },
                  child: Text("Log in to App")
              ),
              FilledButton(
                  onPressed: (){
                    database;
                    final now = DateTime.now();
                    final formattedDate = "${now.day}/${now.month}/${now.year}";

                    _logger.log(_TAG, "formatted date: $formattedDate");
                  },
                  child: Text("Group Data")
              )
            ],
          ),
        ),
      ),
    );
  }
}