import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruhaniapp/base/duration_model.dart';

part 'timer_screen_state.freezed.dart';

@freezed
class TimerScreenState with _$TimerScreenState{
  const factory TimerScreenState.TimerInitialState() = _TimerInitial;
  const factory TimerScreenState.TimerPauseState(DurationModel durationModel) = _TimerPause;
  const factory TimerScreenState.TimerRunningState(DurationModel durationModel, bool isGoalReached) = _TimerRunningState;
  const factory TimerScreenState.TimerRunCompleteState(DurationModel durationModel) = _TimerRunComplete;
}