import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:drift/drift.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/base/database.dart';
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
          TimerTickedEvent: (event) async => _onTicked(event, emit),
          AddLapEvent: (event) async => _addLap(event, emit)
      );
    });
  }

  final TickTock _ticker;
  static const int _duration = 0;

  DurationModel currentDurationModel = DurationModel(hoursStr: "00", minutesStr: "00", secondsStr: "00");
  StreamSubscription<int>? _tickerSubscription;
  final database = AppDb();
  int currentTimeInSeconds = 0;
  int endTimeInSeconds = 20;
  bool isAudioPlayed = false;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  Future <void> _onStarted(TimerStartedEvent event, Emitter<TimerScreenState> emit) async{
    currentDurationModel = DurationCalculator(0).calculateDuration();
    emit(TimerScreenState.TimerRunningState(currentDurationModel, false));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: 0)
        .listen((duration){
          currentDurationModel = DurationCalculator(duration).calculateDuration();
          currentTimeInSeconds = duration;
          return add(TimerTickedEvent(currentDurationModel));
          }
        );
  }


  Future<void> _onPaused(TimerPausedEvent event, Emitter<TimerScreenState> emit) async{

      _tickerSubscription?.pause();
      emit(TimerScreenState.TimerPauseState(currentDurationModel));

  }

  Future<void> _onResumed(TimerResumedEvent resume, Emitter<TimerScreenState> emit) async{

      _tickerSubscription?.resume();
      emit(TimerScreenState.TimerRunningState(currentDurationModel, false));

  }

  Future<void> _onReset(TimerResetEvent event, Emitter<TimerScreenState> emit) async{

    _tickerSubscription?.cancel();
    emit(const TimerScreenState.TimerInitialState());

  }

  Future<void> _onTicked(TimerTickedEvent event, Emitter<TimerScreenState> emit) async{

    bool isGoalReached = currentTimeInSeconds >= endTimeInSeconds;
    if(isGoalReached && !isAudioPlayed){
      isAudioPlayed = true;
      final player = AudioPlayer();
      player.play(AssetSource('sounds/task_completed.mp3'));
    }
    emit(TimerScreenState.TimerRunningState(event.durationModel, isGoalReached));

  }
  Future<void> _addLap(AddLapEvent event, Emitter<TimerScreenState> emit) async{
    var lapInfoEntity = LapInformationEntityCompanion.insert(
        minutes: int.parse(currentDurationModel.minutesStr),
        seconds: int.parse(currentDurationModel.secondsStr),
        milliseconds: currentTimeInSeconds
    );
    await database.into(database.lapInformationEntity).insert(lapInfoEntity);
  }

  void setTime(Duration durationOfTimer){
    int hoursInSeconds = durationOfTimer.inHours * 3600;
    int minutesInSeconds = durationOfTimer.inMinutes * 60;
    endTimeInSeconds = hoursInSeconds + minutesInSeconds + durationOfTimer.inSeconds;
    isAudioPlayed = false;
  }
}