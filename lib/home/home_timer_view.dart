import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/home/states/timer_screen_state.dart';
import 'package:ruhaniapp/home/viewstate/timer_bloc.dart';
import '../base/app_constants.dart';
import '../base/color_constants.dart';
import '../base/duration_calculator.dart';
import '../base/duration_model.dart';

class HomeTimerView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: BlocConsumer<TimerBloc, TimerScreenState>(
            listener: (BuildContext context, TimerScreenState state){

            },
            builder: (BuildContext context, TimerScreenState state){
              return state.when(
                  TimerRunningState: (DurationModel duration, bool isGoalReached){
                    return CircleAvatar(
                      radius: 100,
                      backgroundColor: isGoalReached ? Colors.green : ColorConstants.klogoOrangeColor,
                      child: Text(
                        '${duration.hoursStr}:${duration.minutesStr}:${duration.secondsStr}',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    );
                  },
                  TimerInitialState: (){
                    DurationModel duration = DurationCalculator(0).calculateDuration();
                    return CircleAvatar(
                      radius: 100,
                      backgroundColor: ColorConstants.klogoOrangeColor,
                      child: Text(
                        '${duration.hoursStr}:${duration.minutesStr}:${duration.secondsStr}',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    );
                  },
                  TimerPauseState: (DurationModel duration){
                    return CircleAvatar(
                      radius: 100,
                      backgroundColor: ColorConstants.klogoOrangeColor,
                      child: Text(
                        '${duration.hoursStr}:${duration.minutesStr}:${duration.secondsStr}',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    );
                  },
                  TimerRunCompleteState: (DurationModel duration){
                    return CircleAvatar(
                        radius: 100,
                        backgroundColor: ColorConstants.klogoOrangeColor,
                        child: Text(
                          '${duration.hoursStr}:${duration.minutesStr}:${duration.secondsStr}',
                          style: Theme.of(context).textTheme.displayMedium,
                        )
                    );
                  }
              );
            },
          ),
        ),
      ],
    );
  }

}