import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/home/states/timer_screen_event.dart';
import 'package:ruhaniapp/home/states/timer_screen_state.dart';
import '../../base/tick_tock.dart';

class TimerBloc extends Bloc<TimerScreenEvent, TimerScreenState>{
  final TickTock _tickTock;

  static const int _duration = 1000;
  StreamSubscription<int>? _ticktocksubscription;
  TimerBloc({required TickTock ticker}): _tickTock = ticker, super(TimerInitialState(_duration)) {
    on<StartTimerEvent>(_onStarted);
    on<TimerTickingEvent>(_onTicked);
  }
  @override
  Future<void> close(){
    _ticktocksubscription?.cancel();
    return super.close();
  }
  Future<void> _onStarted(StartTimerEvent event, Emitter<TimerScreenState> state) async{
    emit(TimerRunState(event.duration));
    _ticktocksubscription?.cancel();
    _ticktocksubscription = _tickTock
        .tick(initialTickCount: event.duration)
        .listen((duration) => add(TimerTickingEvent(duration: duration)));
  }

  Future<void> _onTicked(TimerTickingEvent event, Emitter<TimerScreenState> state) async{
    if(event.duration > 0){
      emit(TimerRunState(event.duration));
    }
    else{
      emit(TimerIsCompleteState());
    }
  }
}