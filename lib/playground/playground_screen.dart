import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/firebase_realtime_db.dart';
import 'package:ruhaniapp/base/firebase_utils.dart';
import 'package:ruhaniapp/onboarding/user_registration_details.dart';

@RoutePage()
class PlaygroundScreen extends StatelessWidget{

  final _firebaseUtils = FirebaseUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async{
              UserRegistrationDetails kabutarUser = UserRegistrationDetails(userID: "555", name: "Kabutar", emailID: "kohliflower.kabutar@gmail.com");
              kabutarUser.toJson();
              print(kabutarUser.toJson());
              FirebaseRealtimeDb realtimeDb = FirebaseRealtimeDb();
            },
            child: Text("Log in to App")
        ),
      ),
    );
  }
}