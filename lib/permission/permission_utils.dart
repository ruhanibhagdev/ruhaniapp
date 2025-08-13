import 'package:permission_handler/permission_handler.dart';

class PermissionUtils{

  Future<bool> getMicrophonePermission() async{

    bool isPermissionGranted = false;
    var status = await Permission.microphone.status;

    if (status.isDenied){
      Map<Permission, PermissionStatus> microphonePermission = await[
        Permission.microphone,
      ].request();
    }
    isPermissionGranted = await Permission.microphone.status.isGranted;
    return Future.value(isPermissionGranted);

  }

}