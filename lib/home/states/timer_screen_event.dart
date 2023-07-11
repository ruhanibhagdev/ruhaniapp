import 'package:equatable/equatable.dart';

abstract class TimerScreenEvent extends Equatable{}

class StartTimerEvent extends TimerScreenEvent{
  final int duration;

  StartTimerEvent({required this.duration});

  @override
  List<Object?> get props => [];
}

class PauseTimerEvent extends TimerScreenEvent{
  @override
  List<Object?> get props => [];
}

class TimerTickingEvent extends TimerScreenEvent{
  final int duration;
  TimerTickingEvent({required this.duration});

  @override
  List<Object?> get props => [];
}