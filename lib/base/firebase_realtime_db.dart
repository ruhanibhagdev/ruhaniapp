import 'dart:convert';
import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:ruhaniapp/base/app_constants.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/lap_info/lap_info_entity.dart';
import 'package:ruhaniapp/onboarding/user_registration_details.dart';

import '../lap_info/lap_info_list_model.dart';
import '../lap_info/lap_info_model.dart';

class FirebaseRealtimeDb{

  final _loggerUtils = LoggerUtils();
  final _TAG = "FirebaseRealtimeDb";

  Future<void> createAUser(User currentUser) async{

    try{
      UserRegistrationDetails details = UserRegistrationDetails(
          userID: currentUser.uid,
          name: currentUser.displayName??"⚠️ Name Not Found ⚠️",
          emailID: currentUser.email??"⚠️ Email Not Found ⚠️"
      );

      _loggerUtils.log(_TAG, "✨Saving User Details✨ $details");
      DatabaseReference addUserRef = FirebaseDatabase.instance.ref("${AppConstants.kRootNode}/${currentUser.uid}");
      await addUserRef.set(details.toJson());
    }
    catch(exception){
      _loggerUtils.log(_TAG, "An Error Has Occured . . . :( $exception");
    }

  }

  Future<void> saveALap(LapInfoModel currentLap, String userID) async{

    final databaseReference = FirebaseDatabase.instance.ref();
    final checkIfUserPresent = await databaseReference.child('${AppConstants.kRootNode}/$userID').get();

    List<LapInfoModel> lapInfo = [];

    if(checkIfUserPresent.exists){
      String brokohliflower = jsonEncode(checkIfUserPresent.value);
      _loggerUtils.log(_TAG, "Value = $brokohliflower");

      final checkIfLapPresent = await databaseReference.child('${AppConstants.kRootNode}/$userID/LapInfo/').get();

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
      var userIDReference = FirebaseDatabase.instance.ref('${AppConstants.kRootNode}/$userID/LapInfo/');
      await userIDReference.set(allLapsJson);

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
