import 'package:equatable/equatable.dart';

//the parent
class TimerScreenState extends Equatable{

  final int duration;
  TimerScreenState(this.duration);

  @override
  List<Object?> get props => [];
}

//first child
class TimerInitialState extends TimerScreenState{
  TimerInitialState(super.duration);
}

//second child
class TimerRunState extends TimerScreenState{
  TimerRunState(super.duration);
}

//third child
class TimerPausingState extends TimerScreenState{
  TimerPausingState(super.duration);
}

//fourth child
class TimerIsCompleteState extends TimerScreenState{
  TimerIsCompleteState():super(0);
}