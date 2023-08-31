class DurationModel{

  String minutesStr;
  String secondsStr;
  String milliSecondsStr;

  DurationModel({required this.minutesStr, required this.secondsStr, required this.milliSecondsStr});

  @override
  String toString() {
    return 'DurationModel{minutesStr: $minutesStr, secondsStr: $secondsStr, milliSecondsStr: $milliSecondsStr}';
  }
}