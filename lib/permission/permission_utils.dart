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
    return Future.value(isPermissionGranted);

  }

}