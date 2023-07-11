import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/home/states/timer_screen_event.dart';
import 'package:ruhaniapp/home/states/timer_screen_state.dart';
import 'package:ruhaniapp/home/viewstate/timer_bloc.dart';
import '../base/tick_tock.dart';
import '../timer/timer_screen.dart';

@RoutePage()
class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimerBloc(ticker: const TickTock()),
      child: const TimerView(),
    );
  }
}

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Timer')),
      body: const Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100),
                child: Center(child: TimerText()),
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
  const TimerText({super.key});

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final minutesStr =
    ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 1000).toString().padLeft(2, '0');
    /*return Text(
      '$minutesStr:$secondsStr',
      style: Theme.of(context).textTheme.displayLarge,
    );*/
    return Text(
      '$duration',
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerScreenState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        if(state is TimerInitialState){
          return FloatingActionButton(
            child: const Icon(Icons.play_arrow),
            onPressed: () => context
                .read<TimerBloc>()
                .add(StartTimerEvent(duration: state.duration)),
          );
        }
        else if(state is TimerRunState){
          return Row(
            children: [
              FloatingActionButton(
                child: const Icon(Icons.pause),
                onPressed: () => context.read<TimerBloc>().add(PauseTimerEvent()),
              ),
              FloatingActionButton(
                  child: const Icon(Icons.replay),
                  onPressed: (){

                  }
              )
            ],
          );
        }
        else if(state is TimerPausingState){
          return Text("Inside pause state");
        }
        else{
          return Text("Inside Timer running");
        }
      },
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade500,
            ],
          ),
        ),
      ),
    );
  }
}