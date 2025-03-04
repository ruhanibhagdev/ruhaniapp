import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

class DefaultFirebaseOptions {
  static FirebaseOptions getFirebaseOptions(){
    return devConfig;
  }



  static const FirebaseOptions devConfig = FirebaseOptions(
      apiKey: 'AIzaSyCApKxRA10f2ABDblZ_841ltv_b0rxuELw',
      appId: '1:72218545233:android:e63117201f30e407ebfc70',
      messagingSenderId: '72218545233',
      projectId: 'rufit-cadbd',
      storageBucket: 'rufit-cadbd.appspot.com'
  );


}