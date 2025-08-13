import 'duration_model.dart';

class DurationCalculator{

  int duration;

  DurationCalculator(this.duration);

  DurationModel calculateDuration(){
    String hoursStr = ((duration / (60 * 60)) % 60)
        .floor()
        .toString()
        .padLeft(2, '0');
    String minutesStr = ((duration / 60) % 60)
        .floor()
        .toString()
        .padLeft(2, '0');
    String secondsStr =
    (duration % 60).floor().toString().padLeft(2, '0');
    DurationModel durationModel = DurationModel(hoursStr: hoursStr, minutesStr: minutesStr, secondsStr: secondsStr);
    return durationModel;
  }


}