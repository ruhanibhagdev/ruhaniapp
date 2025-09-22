import 'dart:convert';
import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../lap_info/lap_info_list_model.dart';
import '../lap_info/lap_info_model.dart';
import '../onboarding/user_registration_details.dart';
import 'app_constants.dart';
import 'logger_utils.dart';

class FirebaseRealtimeDb{

  final _loggerUtils = LoggerUtils();
  final _TAG = "FirebaseRealtimeDb";

  Future<void> createAUser(GoogleSignInAccount currentUser) async{

    try{
      UserRegistrationDetails details = UserRegistrationDetails(
          userID: currentUser.id,
          name: currentUser.displayName??"⚠️ Name Not Found ⚠️",
          emailID: currentUser.email??"⚠️ Email Not Found ⚠️"
      );

      _loggerUtils.log(_TAG, "✨Saving User Details✨ $details");
      DatabaseReference addUserRef = FirebaseDatabase.instance.ref("${AppConstants.kRootNode}/${currentUser.id}");
      await addUserRef.set(details.toJson());
    }
    catch(exception){
      _loggerUtils.log(_TAG, "An Error Has Occured . . . :( $exception");
    }

  }

  Future<void> createAUserWithoutSignIn(String uniqueID, String username, String useremail) async{

    try{



      UserRegistrationDetails details = UserRegistrationDetails(
          userID: uniqueID,
          name: username,
          emailID: useremail
      );

      _loggerUtils.log(_TAG, "✨Saving User Details✨ $details");
      DatabaseReference addUserRef = FirebaseDatabase.instance.ref("${AppConstants.kRootNode}/${uniqueID}");
      await addUserRef.set(details.toJson());
    }
    catch(exception){
      _loggerUtils.log(_TAG, "An Error Has Occurred . . . :( $exception");
    }

  }

  Future<void> createAppleUser(String userID, String? userName, String? userEmail) async{

    try{
      UserRegistrationDetails details = UserRegistrationDetails(
          userID: userID,
          name: userName??"⚠️ Name Not Found ⚠️",
          emailID: userEmail??"⚠️ Email Not Found ⚠️"
      );

      _loggerUtils.log(_TAG, "✨Saving User Details✨ $details");
      DatabaseReference addUserRef = FirebaseDatabase.instance.ref("${AppConstants.kRootNode}/${userID}");
      await addUserRef.set(details.toJson());
    }
    catch(exception){
      _loggerUtils.log(_TAG, "An Error Has Occured . . . :( $exception");
    }

  }

  Future<void> saveALap(LapInfoModel currentLap) async{

    SharedPreferences autoRemember = await SharedPreferences.getInstance();
    String? userID = await autoRemember.getString(AppConstants.kUserUniqueID);

    final databaseReference = FirebaseDatabase.instance.ref();
    final checkIfUserPresent = await databaseReference.child('${AppConstants.kRootNode}/$userID').get();

    List<LapInfoModel> lapInfo = [];

    if(checkIfUserPresent.exists){
      String brokohliflower = jsonEncode(checkIfUserPresent.value);
      _loggerUtils.log(_TAG, "Value = $brokohliflower");

      final checkIfLapPresent = await databaseReference.child('${AppConstants.kRootNode}/$userID/${AppConstants.kLapInfoNode}/').get();

      if(checkIfLapPresent.exists){

        String existingLaps = jsonEncode(checkIfLapPresent.value);
        _loggerUtils.log(_TAG, "Existing Laps = $existingLaps");
        LapInfoListModel existingLapsInfo = LapInfoListModel.fromJson(json.decode(existingLaps));
        lapInfo = existingLapsInfo.lapList.toList();
        lapInfo.add(currentLap);
      }

      else{

        await databaseReference.child('${AppConstants.kRootNode}/$userID/${currentLap.toJson()}');

        lapInfo.add(currentLap);
        _loggerUtils.log(_TAG, "Lap List ${lapInfo}");

      }

      LapInfoListModel allLapsInfo = LapInfoListModel(lapList: lapInfo);
      var allLapsJson = allLapsInfo.toJson();
      var currentLapDetails = currentLap.toJson();
      var userIDReference = FirebaseDatabase.instance.ref('${AppConstants.kRootNode}/$userID/${AppConstants.kLapInfoNode}/');
      await userIDReference.set(allLapsJson);

    }

  }

  Future<void> practiceSaveALapThatWillBeDeletedLaterOn(LapInfoModel currentLap) async{

    DatabaseReference ref = FirebaseDatabase.instance.ref();

    final SharedPreferences autoRememberer = await SharedPreferences.getInstance();
    final String? userUniqueID = autoRememberer.getString(AppConstants.kUserUniqueID);

    final snapshot = await ref.child('${AppConstants.kRootNode}/${userUniqueID}').get();
    if (snapshot.exists) {
      _loggerUtils.log(_TAG, "Current user data: ${snapshot.value}");

      final isChildThere = await ref.child('${AppConstants.kRootNode}/${userUniqueID}/${AppConstants.kLapInfoNode}').get();

      if(isChildThere.exists){
        _loggerUtils.log(_TAG, "Update the Lap Info");
        String existingLaps = jsonEncode(isChildThere.value);
        _loggerUtils.log(_TAG, "Existing Laps = $existingLaps");
        LapInfoListModel allLaps = LapInfoListModel.fromJson(json.decode(existingLaps));
        List<LapInfoModel> allLapsList = allLaps.lapList.toList();
        allLapsList.add(currentLap);
        LapInfoListModel newLapInfo = LapInfoListModel(lapList: allLapsList);
        await ref.child('${AppConstants.kRootNode}/${userUniqueID}/${AppConstants.kLapInfoNode}').set(newLapInfo.toJson());
      }
      else{
        _loggerUtils.log(_TAG, "Create the Lap Info!!!");
        await ref.child('${AppConstants.kRootNode}/${userUniqueID}/${AppConstants.kLapInfoNode}').set(currentLap.toJson());
      }

    }

    else {
      print('No data available.');
    }

  }

}

/*
{
"rules": {
".read": "now < 1747119600000",  // 2025-5-13
".write": "now < 1747119600000",  // 2025-5-13
}
}*/
