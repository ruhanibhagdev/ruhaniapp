import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:drift/drift.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../base/database.dart';
import '../../base/duration_calculator.dart';
import '../../base/duration_model.dart';
import '../../base/firebase_realtime_db.dart';
import '../../base/logger_utils.dart';
import '../../base/tick_tock.dart';
import '../../injector/injection.dart';
import '../../lap_info/lap_info_model.dart';
import '../states/timer_screen_event.dart';
import '../states/timer_screen_state.dart';

class TimerBloc extends Bloc<TimerScreenEvent, TimerScreenState> {
  TimerBloc({required TickTock ticker}): _ticker = ticker, super(const TimerScreenState.TimerInitialState()){
    on<TimerScreenEvent>((event, emit) async{
      await event.map(
          TimerStarted: (event) async => _onStarted(event, emit),
          TimerPaused: (event) async => _onPaused(event, emit),
          TimerResumed: (event) async => _onResumed(event, emit),
          TimerReset: (event) async => _onReset(event, emit),
          TimerTicked: (event) async => _onTicked(event, emit),
          AddLap: (event) async => _addLap(event, emit),
          AppLogout: (event) async => _logOut(event, emit)
      );
    });
  }

  final TickTock _ticker;
  static const int _duration = 0;

  DurationModel currentDurationModel = DurationModel(hoursStr: "00", minutesStr: "00", secondsStr: "00");
  StreamSubscription<int>? _tickerSubscription;
  final database = AppDb();
  int currentTimeInSeconds = 0;
  int endTimeInSeconds = -1;
  bool isAudioPlayed = false;
  final _firebaseRealtimeDb = FirebaseRealtimeDb();

  final _logger = locator<LoggerUtils>();
  final _TAG = "TimerBloc";

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

    bool isGoalReached = (currentTimeInSeconds >= endTimeInSeconds) && (endTimeInSeconds != -1);
    if(isGoalReached && !isAudioPlayed){
      isAudioPlayed = true;
      final player = AudioPlayer();
      player.play(AssetSource('sounds/task_completed.mp3'));
    }
    emit(TimerScreenState.TimerRunningState(event.durationModel, isGoalReached));

  }
  Future<void> _addLap(AddLapEvent event, Emitter<TimerScreenState> emit) async{
    _logger.log(_TAG, "Timer Buloco $currentDurationModel");
    final now = DateTime.now();
    final formattedDate = "${now.day}/${now.month}/${now.year}";
    var lapInfoEntity = LapInformationEntityCompanion.insert(
        hours: int.parse(currentDurationModel.hoursStr),
        minutes: int.parse(currentDurationModel.minutesStr),
        seconds: int.parse(currentDurationModel.secondsStr),
        date: formattedDate
    );
    await database.into(database.lapInformationEntity).insert(lapInfoEntity);
    LapInfoModel currentLapInfo = LapInfoModel(
        lapNumber: 1,
        hours: lapInfoEntity.hours.value,
        minutes: lapInfoEntity.minutes.value,
        seconds: lapInfoEntity.seconds.value,
        lapDateTime: DateTime.now().toString()
    );
    await _firebaseRealtimeDb.saveALap(currentLapInfo);
  }

  void setTime(Duration durationOfTimer){
    int hoursInSeconds = durationOfTimer.inHours * 3600;
    int minutesInSeconds = durationOfTimer.inMinutes * 60;
    endTimeInSeconds = hoursInSeconds + minutesInSeconds + durationOfTimer.inSeconds;
    isAudioPlayed = false;
  }

  Future<void> _logOut(AppLogoutEvent event, Emitter<TimerScreenState> emit) async{
    _logger.log(_TAG, "Logging out of the app");
    final GoogleSignIn signIn = GoogleSignIn.instance;
    await signIn.signOut();
    SharedPreferences autoRemember = await SharedPreferences.getInstance();
    await autoRemember.clear();
  }
}