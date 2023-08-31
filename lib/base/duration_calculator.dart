import 'duration_model.dart';

class DurationCalculator{

  int duration;

  DurationCalculator(this.duration);

  DurationModel calculateDuration(){
    final minutesStr = "00";
    ///Get quotient
    final secondsStr = (duration ~/ 100).toString().padLeft(2, '0');
    ///Get only remainder
    final milliSecondsStr = (duration % 100).toString().padLeft(2, '0');
    DurationModel durationModel = DurationModel(minutesStr: minutesStr, secondsStr: secondsStr, milliSecondsStr: milliSecondsStr);
    return durationModel;
  }
}