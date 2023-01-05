import 'package:flutter/material.dart';
import 'package:ruhaniapp/timer/timer_screen.dart';

class HomeScreen extends StatelessWidget{
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
          Text("Hello Ruhani today is december 2, 2022"),
          ElevatedButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TimerScreen()));
          }, child: Text("Start timer"))
        ],
        )
      ),

    );
  }



}