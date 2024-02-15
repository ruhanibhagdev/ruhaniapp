import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/home/states/timer_screen_event.dart';
import 'package:ruhaniapp/home/states/timer_screen_state.dart';
import 'package:ruhaniapp/home/viewstate/timer_bloc.dart';
import '../base/duration_calculator.dart';
import '../base/duration_model.dart';
import '../base/tick_tock.dart';

@RoutePage()
class TimerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimerBloc(ticker: const TickTock()),
      child: TimerView(),
    );
  }
}

class TimerView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Timer')),
      body: Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100),
                child: Center(child: TimerText(),)
              ),
              Actions(),
            ],
          ),
        ],
      ),
    );
  }
}

class TimerText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TimerBloc, TimerScreenState>(
      listener: (BuildContext context, TimerScreenState state){

      },
      builder: (BuildContext context, TimerScreenState state){
        return state.when(
            TimerRunningState: (DurationModel duration){
              return Text(
                '${duration.minutesStr}:${duration.secondsStr}:${duration.milliSecondsStr}',
                style: Theme.of(context).textTheme.displayMedium,
              );
            },
            TimerInitialState: (){
              DurationModel duration = DurationCalculator(0).calculateDuration();
              return Text(
                '${duration.minutesStr}:${duration.secondsStr}:${duration.milliSecondsStr}',
                style: Theme.of(context).textTheme.displayMedium,
              );
            },
            TimerRunPauseState: (DurationModel duration){
              return Text(
                '${duration.minutesStr}:${duration.secondsStr}:${duration.milliSecondsStr}',
                style: Theme.of(context).textTheme.displayMedium,
              );
            },
            TimerRunComplete: (DurationModel duration){
              return Text(
                '${duration.minutesStr}:${duration.secondsStr}:${duration.milliSecondsStr}',
                style: Theme.of(context).textTheme.displayMedium,
              );
            }
        );
      },
    );
  }
}

class Actions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerScreenState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (BuildContext context, TimerScreenState state) {
        return state.when(
            TimerInitialState: (){
              return FloatingActionButton(
                  child: const Icon(Icons.play_arrow),
                  onPressed: () => context
                      .read<TimerBloc>()
                      .add(const TimerScreenEvent.TimerStartedEvent(0))
              );
            },
            TimerRunPauseState: (DurationModel durationModel){
              return FloatingActionButton(
                  child: const Icon(Icons.restart_alt_rounded),
                  onPressed: () => context
                      .read<TimerBloc>()
                      .add(const TimerScreenEvent.TimerResumedEvent())
              );
            },
            TimerRunningState: (DurationModel durationModel){
              return FloatingActionButton(
                  child: const Icon(Icons.pause),
                  onPressed: () => context
                      .read<TimerBloc>()
                      .add(const TimerScreenEvent.TimerPausedEvent())
              );
            },
            TimerRunComplete: (DurationModel durationModel){
              return FloatingActionButton(
                child: const Icon(Icons.play_arrow),
                onPressed: (){
                  context.read<TimerBloc>().add(const TimerScreenEvent.TimerStartedEvent(0));
                },
              );
            }
        );
      },
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xE3FDF3),
              Color(0x58C3C7),
            ],
          ),
        ),
      ),
    );
  }
}