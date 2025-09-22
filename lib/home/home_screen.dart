import 'dart:math';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:rufit/home/states/timer_screen_event.dart';
import 'package:rufit/home/states/timer_screen_state.dart';
import 'package:rufit/home/viewstate/timer_bloc.dart';
import 'package:speech_to_text/speech_to_text.dart';
import '../base/color_constants.dart';
import '../base/tick_tock.dart';
import '../circularTimer/circular_timer_screen.dart';
import '../commonwidgets/app_icons_widget.dart';
import '../router/app_router.dart';
import '../speechToText/speech_to_text_widget.dart';
import '../splash/splash_screen.dart';
import 'home_screen_action_view.dart';
import 'home_timer_view.dart';

// Ui link - https://snipboard.io/FTucEO.jpg
// lap design - https://snipboard.io/5UJLZo.jpg
// https://snipboard.io/ghfRQb.jpg

@RoutePage()
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => TimerBloc(ticker: const TickTock()),
      child: BlocConsumer<TimerBloc, TimerScreenState>(
        listener: (BuildContext context, TimerScreenState state){
          state.maybeWhen(
              orElse: (){
              }
          );
        },
        builder: (BuildContext context, TimerScreenState state){
          var timerBloc = context.read<TimerBloc>();
          return Scaffold(
            backgroundColor: ColorConstants.klogoBackgroundColor,
            appBar: AppBar(
              title: Text("RuFit"),
              backgroundColor: ColorConstants.klogoOrangeColor,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 24
              ),
            ),
            body: Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [

                          AppIconsWidget(
                            iconToDisplay: Icons.run_circle_outlined,
                            buttonText: "View laps",
                            onButtonPress: () async{
                              await context.router.navigate(const LapInfoRoute());
                            },
                          ),
                          AppIconsWidget(
                            iconToDisplay: Icons.record_voice_over,
                            buttonText: "Use Voice",
                            onButtonPress: (){
                              showModalBottomSheet<void>(
                                context: context,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0)),
                                ),
                                builder: (BuildContext context) {
                                  return SpeechToTextWidget(
                                    timerBloc: timerBloc,
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      HomeTimerView(),
                      SizedBox(
                        height: 20,
                      ),
                      HomeScreenActionView(),
                    ],
                  ),
                )
            ),
            floatingActionButton: Container(
              child: AppIconsWidget(
                iconToDisplay: Icons.plus_one_rounded,
                buttonText: "Add Lap",
                onButtonPress: () async{
                  BlocProvider.of<TimerBloc>(context).add(const TimerScreenEvent.AddLapEvent());
                },
              ),
            ),
          );
        },
      ),
    );
  }
}