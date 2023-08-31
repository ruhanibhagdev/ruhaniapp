import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruhaniapp/base/duration_model.dart';

part 'timer_screen_state.freezed.dart';

@freezed
class TimerScreenState with _$TimerScreenState{
  const factory TimerScreenState.TimerInitialState() = _TimerInitial;
  const factory TimerScreenState.TimerRunPauseState(DurationModel durationModel) = _TimerRunPause;
  const factory TimerScreenState.TimerRunningState(DurationModel durationModel) = _TimerRunningState;
  const factory TimerScreenState.TimerRunComplete(DurationModel durationModel) = _TimerRunComplete;
}