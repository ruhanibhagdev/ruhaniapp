import 'package:freezed_annotation/freezed_annotation.dart';
import '../../base/duration_model.dart';

part 'timer_screen_event.freezed.dart';

@freezed
class TimerScreenEvent with _$TimerScreenEvent{
  const factory TimerScreenEvent.TimerStartedEvent(DurationModel durationModel) = TimerStartedEvent;
  const factory TimerScreenEvent.TimerPausedEvent() = TimerPausedEvent;
  const factory TimerScreenEvent.TimerResumedEvent() = TimerResumedEvent;
  const factory TimerScreenEvent.TimerResetEvent() = TimerResetEvent;
  const factory TimerScreenEvent.TimerTickedEvent(DurationModel durationModel) = TimerTickedEvent;
  const factory TimerScreenEvent.AddLapEvent() = AddLapEvent;
}