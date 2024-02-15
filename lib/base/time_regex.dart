class TimeRegex{
  Duration? extractTime(String input) {
    // Define a regular expression to match time in the format "X hours, Y minutes, and Z seconds"
    RegExp regex = RegExp(r'(\d+)\s*hours?|\s*(\d+)\s*minutes?|\s*(\d+)\s*seconds?');

    // Attempt to match the regular expression in the input string
    Iterable<Match> matches = regex.allMatches(input);

    // Extract hours, minutes, and seconds from the matched groups
    int hours = 0;
    int minutes = 0;
    int seconds = 0;

    for (Match match in matches) {
      if (match.group(1) != null) {
        hours = int.parse(match.group(1)!);
      } else if (match.group(2) != null) {
        minutes = int.parse(match.group(2)!);
      } else if (match.group(3) != null) {
        seconds = int.parse(match.group(3)!);
      }
    }

    // Create a Duration object with the extracted hours, minutes, and seconds
    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  }

  String formatDuration(Duration duration) {
    return '${duration.inHours} hours, ${duration.inMinutes.remainder(60)} minutes, ${duration.inSeconds.remainder(60)} seconds';
  }
}