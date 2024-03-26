import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/base/duration_calculator.dart';
import 'package:ruhaniapp/base/duration_model.dart';
import '../../base/tick_tock.dart';
import '../states/timer_screen_event.dart';
import '../states/timer_screen_state.dart';

class TimerBloc extends Bloc<TimerScreenEvent, TimerScreenState> {
  TimerBloc({required TickTock ticker}): _ticker = ticker, super(const TimerScreenState.TimerInitialState()){
    on<TimerScreenEvent>((event, emit) async{
      await event.map(
          TimerStartedEvent: (event) async => _onStarted(event, emit),
          TimerPausedEvent: (event) async => _onPaused(event, emit),
          TimerResumedEvent: (event) async => _onResumed(event, emit),
          TimerResetEvent: (event) async => _onReset(event, emit),
          TimerTickedEvent: (event) async => _onTicked(event, emit)
      );
    });
  }

  final TickTock _ticker;
  static const int _duration = 0;

  DurationModel currentDurationModel = DurationModel(minutesStr: "00", secondsStr: "00", milliSecondsStr: "00");
  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  Future <void> _onStarted(TimerStartedEvent event, Emitter<TimerScreenState> emit) async{
    currentDurationModel = DurationCalculator(0).calculateDuration();
    emit(TimerScreenState.TimerRunningState(currentDurationModel));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: 0)
        .listen((duration){
          currentDurationModel = DurationCalculator(duration).calculateDuration();
          return add(TimerTickedEvent(currentDurationModel));
          }
        );
  }


  Future<void> _onPaused(TimerPausedEvent event, Emitter<TimerScreenState> emit) async{

      _tickerSubscription?.pause();
      emit(TimerScreenState.TimerRunPauseState(currentDurationModel));

  }

  Future<void> _onResumed(TimerResumedEvent resume, Emitter<TimerScreenState> emit) async{

      _tickerSubscription?.resume();
      emit(TimerScreenState.TimerRunningState(currentDurationModel));

  }

  Future<void> _onReset(TimerResetEvent event, Emitter<TimerScreenState> emit) async{

    _tickerSubscription?.cancel();
    emit(const TimerScreenState.TimerInitialState());

  }

  Future<void> _onTicked(TimerTickedEvent event, Emitter<TimerScreenState> emit) async{

    emit(TimerScreenState.TimerRunningState(event.durationModel));

  }
}