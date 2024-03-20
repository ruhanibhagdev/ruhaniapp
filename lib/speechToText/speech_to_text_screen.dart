import 'package:auto_route/annotations.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/color_constants.dart';
import 'package:ruhaniapp/base/duration_calculator.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/base/time_regex.dart';
import 'package:ruhaniapp/home/viewstate/timer_bloc.dart';
import 'package:ruhaniapp/permission/permission_utils.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextWidget extends StatefulWidget{

  TimerBloc timerBloc;
  SpeechToTextWidget({required this.timerBloc});

  @override
  State<StatefulWidget> createState() {
    return SpeechToTextWidgetState();
  }
}

class SpeechToTextWidgetState extends State<SpeechToTextWidget>{
  final _logger = LoggerUtils();
  final _TAG = "SpeechToTextWidgetState";
  TimeRegex timeRegex = TimeRegex();
  SpeechToText speechToText = SpeechToText();
  bool isListening = false;
  String detectedText = "Hold the button and start speaking";

  @override
  void initState() {
    checkMicAvailability();
    super.initState();
  }

  Future<void> checkMicAvailability() async{
    PermissionUtils permissionUtils = PermissionUtils();
    bool isMicAvailable = await permissionUtils.getMicrophonePermission();
    _logger.log(_TAG, "is eggplant pizza permission available $isMicAvailable");
    if (isMicAvailable){
      await speechToText.initialize();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            detectedText,
            style: TextStyle(
                fontSize: 18,
                color: isListening? Colors.grey:Colors.black
            ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        endRadius: 75.0,
        animate: true,
        duration: const Duration(milliseconds: 2000),
        glowColor: ColorConstants.kGreenColor,
        repeat: true,
        repeatPauseDuration: const Duration(milliseconds: 100),
        showTwoGlows: true,
        child: GestureDetector(
          onTap: () async {
            if(!isListening){
              bool isAvailable = await speechToText.initialize();
              if(isAvailable){
                _logger.log(_TAG, "eggplant pizza");
                isListening = true;
                setState(() {});
                speechToText.listen(
                  listenFor: Duration(days: 1),
                  onResult: (result){
                    detectedText = result.recognizedWords;

                    setState(() {});
                  }
                );
              }
            }
            else{
              isListening = false;
              detectedText = "";
              await speechToText.stop();
              setState(() {});
            }
          },
          child: CircleAvatar(
            backgroundColor: ColorConstants.kGreenColor,
            radius: 30,
            child: Icon(
              isListening ? Icons.mic : Icons.mic_off,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: FilledButton(
        onPressed: (){
          String textwithdigits = detectedText;
          _logger.log(_TAG, "textwithdigits $textwithdigits");
          //detectedText = TimeRegex().extractDigits(textwithdigits);
          var duration = timeRegex.extractTime(detectedText);
          if(duration != null){
            String formattedDuration = timeRegex.formatDuration(duration);
            _logger.log(_TAG, "Formatted duration $formattedDuration");
          }
          Navigator.pop(context);
        },
        child: Text("Set Timer"),
      ),
    );
  }
}