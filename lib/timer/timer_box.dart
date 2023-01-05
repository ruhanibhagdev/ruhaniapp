import 'package:flutter/material.dart';

class TimerBox extends StatelessWidget{

  String timerLabel;
  String timerValue;


  TimerBox({required this.timerLabel, required this.timerValue});

  @override
  Widget build(BuildContext context) {
   return  Container(
       padding: EdgeInsets.all(10),
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.redAccent
       ),
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           Text(timerValue,
             style: TextStyle(
                 color: Colors.white,
                 fontSize: 29,
                 fontWeight: FontWeight.bold
             ),
           ),
           Text(timerLabel,
             style: TextStyle(
               color: Colors.white,
               fontSize: 16,
             ),
           ),
         ],
       )
   );
  }
}