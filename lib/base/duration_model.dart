class DurationModel{

  String hoursStr;
  String minutesStr;
  String secondsStr;


  DurationModel({required this.minutesStr, required this.secondsStr, required this.hoursStr});

  @override
  String toString() {
    return 'DurationModel{minutesStr: $minutesStr, secondsStr: $secondsStr, hoursStr: $hoursStr}';
  }
}