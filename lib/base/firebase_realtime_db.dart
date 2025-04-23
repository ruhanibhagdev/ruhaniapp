import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/onboarding/user_registration_details.dart';

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

      _loggerUtils.log(_TAG, "Saving User Details $details");
      DatabaseReference addUserRef = FirebaseDatabase.instance.ref("brokohliflower/${currentUser.uid}");
      await addUserRef.set(details.toJson());
    }
    catch(exception){
      _loggerUtils.log(_TAG, "An Error Has Occured . . . :( $exception");
    }

  }

}