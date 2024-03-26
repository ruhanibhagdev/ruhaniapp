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
                    minutesStr: "0",
                    secondsStr: "0",
                    milliSecondsStr: "0"
                );
                return AppIconWidget(
                    buttonText: "Start",
                    iconToDisplay: Icons.play_arrow_rounded,
                    onButtonPress: (){
                      context.read<TimerBloc>().add(TimerScreenEvent.TimerStartedEvent(startDuration));
                    },
                );
              },
              TimerRunPauseState: (DurationModel durationModel){
                return AppIconWidget(
                    buttonText: "Resume",
                    iconToDisplay: Icons.restart_alt_rounded,
                    onButtonPress: (){
                      context.read<TimerBloc>().add(const TimerScreenEvent.TimerResumedEvent());
                    },
                );
              },
              TimerRunningState: (DurationModel durationModel){
                return Row(
                  children: [
                    AppIconWidget(
                      iconToDisplay: Icons.square_rounded,
                      buttonText: "Stop",
                      onButtonPress: (){
                        context.read<TimerBloc>().add(const TimerScreenEvent.TimerResetEvent());
                      },
                    ),
                    AppIconWidget(
                      buttonText: "Pause",
                      iconToDisplay: Icons.pause_rounded,
                      onButtonPress: (){
                        context.read<TimerBloc>().add(const TimerScreenEvent.TimerPausedEvent());
                      },
                    )
                  ],
                );
              },
              TimerRunComplete: (DurationModel durationModel){
                return AppIconWidget(
                    buttonText: "Start",
                    iconToDisplay: Icons.play_arrow_rounded
                );
              }
          );
        }
    );
  }
}