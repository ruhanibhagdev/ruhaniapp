import 'package:auto_route/annotations.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rufit/permission/permission_utils.dart';
import 'package:speech_to_text/speech_to_text.dart';
import '../base/color_constants.dart';
import '../base/logger_utils.dart';
import '../commonwidgets/filled_button_widget.dart';
import '../home/viewstate/timer_bloc.dart';
import '../injector/injection.dart';

class SpeechToTextWidget extends StatefulWidget {
  TimerBloc timerBloc;
  SpeechToTextWidget({required this.timerBloc});

  @override
  State<SpeechToTextWidget> createState() => _SpeechToTextState();


}

class _SpeechToTextState extends State<SpeechToTextWidget> {
  var text = "Hold the button and start speaking (Ex. Say Set timer for 2 mins and 30 secs)";
  var isListening = false;
  Color bgColor = ColorConstants.klogoOrangeColor;
  final _logger = locator<LoggerUtils>();
  final _TAG  = "SpeechToTextState";

  SpeechToText speechToText = SpeechToText();

  @override
  void initState() {
    askMicrophonePermission();
    super.initState();
  }

  void checkMicrophoneAvailability() async {
    bool available = await speechToText.initialize();
    if (available) {
      setState(() {
        if (kDebugMode) {
          _logger.log(_TAG, 'Microphone available: $available');
        }
      });
    } else {
      if (kDebugMode) {
        _logger.log(_TAG, "The user has denied the use of speech recognition.");
      }
    }
  }

  Future<bool> askMicrophonePermission() async{
    bool isPermissionAvailable = await PermissionUtils().getMicrophonePermission();
    if(isPermissionAvailable){
      checkMicrophoneAvailability();
    }
    return Future.value(isPermissionAvailable);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            ),
            color: ColorConstants.klogoBackgroundColor
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
                AvatarGlow(
                  animate: isListening,
                  duration: const Duration(milliseconds: 2000),
                  glowColor: bgColor,
                  repeat: true,
                  //repeatPauseDuration: const Duration(milliseconds: 100),
                  //showTwoGlows: true,
                  child: GestureDetector(
                    onTap: () async {
                      if (!isListening) {
                        var available = await speechToText.initialize();
                        if (available) {
                          setState(() {
                            isListening = true;
                          });
                          speechToText.listen(
                              listenFor: const Duration(days: 1),
                              onResult: (result) {
                                setState(() {
                                  text = result.recognizedWords;
                                });
                              });
                        }
                      } else {
                        setState(() {
                          isListening = false;
                        });
                        speechToText.stop();
                      }
                    },
                    child: CircleAvatar(
                      backgroundColor: bgColor,
                      radius: 40,
                      child: Icon(
                        isListening ? Icons.mic : Icons.mic_off,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    // unfocus the text when user taps outside the container
                    FocusScope.of(context).unfocus();
                  },
                  child: SelectableText(text,
                    style: TextStyle(
                      fontSize: 18,
                      color: isListening ? Colors.black87 : Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: FilledButtonWidget(
                    buttonText: "Set Time",
                    onButtonPressed: (){
                      if(text.isNotEmpty){
                        var duration = extractTime(text);
                        if(duration != null){
                          widget.timerBloc.setTime(duration);
                        }
                        var formatedDuration = formatDuration(duration!);
                        _logger.log(_TAG, "Formatted Duration $formatedDuration");
                        Navigator.pop(context);
                      }
                    },
                  ),
                )
              ]
          ),
        )
    );
  }


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