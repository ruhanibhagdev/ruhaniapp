import 'dart:math';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/base/tick_tock.dart';
import 'package:ruhaniapp/base/time_regex.dart';
import 'package:ruhaniapp/commonwidgets/app_icons_widget.dart';
import 'package:ruhaniapp/home/home_screen_action_view.dart';
import 'package:ruhaniapp/home/states/timer_screen_state.dart';
import 'package:ruhaniapp/home/timer_page.dart';
import 'package:ruhaniapp/home/viewstate/timer_bloc.dart';
import 'package:ruhaniapp/permission/permission_utils.dart';
import 'package:speech_to_text/speech_to_text.dart';
import '../circularTimer/circular_timer_screen.dart';
import '../speechToText/speech_to_text_screen.dart';
import '../splash/splash_screen.dart';

// Ui link - https://snipboard.io/FTucEO.jpg
// lap design - https://snipboard.io/5UJLZo.jpg
// https://snipboard.io/ghfRQb.jpg

@RoutePage()
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => TimerBloc(ticker: TickTock()),
      child: BlocConsumer<TimerBloc, TimerScreenState>(
        listener: (BuildContext context, TimerScreenState state){
          state.maybeWhen(
              orElse: (){
              }
          );
        },
        builder: (BuildContext context, TimerScreenState state){
          var timerbloc = context.read<TimerBloc>();
          return Scaffold(
            appBar: AppBar(
              title: Text("Ruhani app"),
            ),
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("The app started on December 2, 2022"),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CircularTimerScreen()));
                        },
                        child: Text("Start Circle Timer")
                    ),
                    FilledButton(
                        onPressed: (){
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context){
                                return Container(
                                    height: 400,
                                    color: Colors.red,
                                    child: SpeechToTextWidget(
                                      timerBloc: timerbloc,
                                    )
                                );
                              }
                          );
                        },
                        child: Text("Show Bottom Sheet")
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
                    TimerText(),
                    HomeScreenActionView()
                  ],
                )
            ),
          );
        },
      ),
    );
  }
}