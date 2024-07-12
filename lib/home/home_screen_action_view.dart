import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/base/duration_model.dart';
import 'package:ruhaniapp/commonwidgets/app_icons_widget.dart';
import 'package:ruhaniapp/home/states/timer_screen_event.dart';
import 'package:ruhaniapp/home/states/timer_screen_state.dart';
import 'package:ruhaniapp/home/viewstate/timer_bloc.dart';

class HomeScreenActionView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerScreenState>(
        buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
        builder: (BuildContext context, TimerScreenState state){
          return state.when(
              TimerInitialState: (){
                DurationModel startDuration = DurationModel(
                    hoursStr: "0",
                    minutesStr: "0",
                    secondsStr: "0"
                );
                return AppIconsWidget(
                    buttonText: "Start",
                    iconToDisplay: Icons.play_arrow_rounded,
                    onButtonPress: (){
                      context.read<TimerBloc>().add(TimerScreenEvent.TimerStartedEvent(startDuration));
                    },
                );
              },
              TimerPauseState: (DurationModel durationModel){
                return AppIconsWidget(
                    buttonText: "Replay",

                    iconToDisplay: Icons.restart_alt_rounded,
                    onButtonPress: (){
                      context.read<TimerBloc>().add(const TimerScreenEvent.TimerResumedEvent());
                    },
                );
              },
              TimerRunningState: (DurationModel durationModel, bool isGoalReached){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppIconsWidget(
                      iconToDisplay: Icons.square_rounded,
                      buttonText: "Stop",
                      onButtonPress: (){
                        context.read<TimerBloc>().add(const TimerScreenEvent.TimerResetEvent());
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    AppIconsWidget(
                      buttonText: "Pause",
                      iconToDisplay: Icons.pause_rounded,
                      onButtonPress: (){
                        context.read<TimerBloc>().add(const TimerScreenEvent.TimerPausedEvent());
                      },
                    )
                  ],
                );
              },
              TimerRunCompleteState: (DurationModel durationModel){
                return AppIconsWidget(
                    buttonText: "Start",
                    iconToDisplay: Icons.play_arrow_rounded
                );
              }
          );
        }
    );
  }
}