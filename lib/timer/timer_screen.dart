import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:ruhaniapp/timer/timer_box.dart';

class TimerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return TimerScreenState();
  }

}

class TimerScreenState extends State<TimerScreen>{
  int secondsPassed = 0;
  int displaySeconds = 0;
  int displayMinutes = 0;
  int displayHours = 0;
  Timer? timer;
  bool isTimerActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TimerBox(timerLabel: "Hours",timerValue: displayHours.toString(),),
                TimerBox(timerLabel: "Minutes",timerValue: displayMinutes.toString(),),
                TimerBox(timerLabel: "Seconds",timerValue: displaySeconds.toString()),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            ElevatedButton(
              onPressed: (){
                isTimerActive = true;
                if(timer == null || timer?.isActive == false){
                  timer = Timer.periodic(Duration(seconds: 1), (timer) {
                    calculateTime();
                  });
                }
              },
              child: Text("Start"),
            ),
            ElevatedButton(
                onPressed:(){
                  isTimerActive = false;
                  timer?.cancel();
                }, child: Text("Stop")
            ),
            ElevatedButton(
                onPressed: (){
                  timer?.cancel();
                  isTimerActive = false;
                  resetTime();
                },
                child: Text("Reset")
            )
          ],
        )
      ),
    );
  }

  void calculateTime(){
    if(isTimerActive){
      secondsPassed++;
      displaySeconds = secondsPassed % 60;
      displayMinutes = secondsPassed ~/ 60;
      displayHours = displayMinutes ~/ 60;
      setState(() {
      });
    }
  }

  void resetTime(){
    secondsPassed = 0;
    displaySeconds = 0;
    displayMinutes = 0;
    displayHours = 0;
    setState(() {
    });
  }
}