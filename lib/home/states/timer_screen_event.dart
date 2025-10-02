import 'package:freezed_annotation/freezed_annotation.dart';
import '../../base/duration_model.dart';

part 'timer_screen_event.freezed.dart';

@freezed
sealed class TimerScreenEvent with _$TimerScreenEvent{
  const factory TimerScreenEvent.TimerStarted(DurationModel durationModel) = TimerStartedEvent;
  const factory TimerScreenEvent.TimerPaused() = TimerPausedEvent;
  const factory TimerScreenEvent.TimerResumed() = TimerResumedEvent;
  const factory TimerScreenEvent.TimerReset() = TimerResetEvent;
  const factory TimerScreenEvent.TimerTicked(DurationModel durationModel) = TimerTickedEvent;
  const factory TimerScreenEvent.AddLap() = AddLapEvent;
}