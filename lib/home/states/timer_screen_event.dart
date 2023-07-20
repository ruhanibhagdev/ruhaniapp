

import 'package:equatable/equatable.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();
}

class TimerStarted extends TimerEvent {
const TimerStarted({required this.duration});
final int duration;

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class TimerPaused extends TimerEvent {
const TimerPaused();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class TimerResumed extends TimerEvent {
const TimerResumed();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class TimerReset extends TimerEvent {
  const TimerReset();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class TimerTicked extends TimerEvent {
const TimerTicked({required this.duration});
final int duration;

  @override
  // TODO: implement props
  List<Object?> get props => [];
}