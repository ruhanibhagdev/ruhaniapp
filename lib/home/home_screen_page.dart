import 'dart:math';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/commonwidgets/app_icons_widget.dart';
import 'package:ruhaniapp/permission/permission_utils.dart';
import 'package:ruhaniapp/timer/timer_screen.dart';
import '../circularTimer/circular_timer_screen.dart';
import '../splash/splash_screen_page.dart';

// Ui link - https://snipboard.io/FTucEO.jpg
// lap design - https://snipboard.io/5UJLZo.jpg
// https://snipboard.io/ghfRQb.jpg

@RoutePage()
class HomeScreenPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ruhani app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("The app started on December 2, 2022"),
          ElevatedButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TimerScreen()));
          }, child: Text("Start Timer")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CircularTimerScreen()));
                },
                child: Text("Start Circle Timer")
            ),
            Container(
              width: 200,
              height: 200,
              child: Lottie.asset("assets/lottiefiles/microphone.json")
            ),
            ElevatedButton(
                onPressed: (){
                  PermissionUtils permissionUtils = PermissionUtils();
                  permissionUtils.getMicrophonePermission();
                },
                child: Text("Ask")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppIconWidget(
                  buttonText: "Start",
                  iconToDisplay: Icons.play_arrow,
                ),
                AppIconWidget(
                  buttonText: "Stop",
                  iconToDisplay: Icons.stop,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "00:00",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                AppIconWidget(
                  buttonText: "Restart",
                  iconToDisplay: Icons.replay,
                ),
                AppIconWidget(
                  buttonText: "Lap",
                  iconToDisplay: Icons.list_alt_outlined,
                ),
              ],
            ),
        ],
        )
      ),

    );
  }



}