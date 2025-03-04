import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/firebase_utils.dart';

@RoutePage()
class PlaygroundScreen extends StatelessWidget{

  final _firebaseUtils = FirebaseUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async{
              await _firebaseUtils.initializeFirebase().then((User? currentUser) async{
                print("Current User Found ?!. $currentUser");
                await _firebaseUtils.startGoogleSignIn();
                /*if(currentUser == null){
                  await _firebaseUtils.startGoogleSignIn();
                }*/
              });
            },
            child: Text("Log in to App")
        ),
      ),
    );
  }
}