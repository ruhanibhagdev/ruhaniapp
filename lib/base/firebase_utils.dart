import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ruhaniapp/base/firebase_realtime_db.dart';
import 'package:ruhaniapp/base/logger_utils.dart';

class FirebaseUtils {

  final _logger = LoggerUtils();
  final _TAG = "Firebase Utils";
  final _firebaseRealtimeDb = FirebaseRealtimeDb();

  Future<User?> initializeFirebase() async {

    FirebaseApp firebaseApp = await Firebase.initializeApp();
    User? currentUser = FirebaseAuth.instance.currentUser;

    if(currentUser != null){
      //this is for us to remember
      //user has already logged in, don't irritate by showing log in again :)
      return Future.value(currentUser);
    }
    else{
      return null;
    }

  }

  Future<User?> startGoogleSignIn() async{

    User? currentUser;
    try{
      FirebaseAuth auth = FirebaseAuth.instance;
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? allAccountsInDevice = await googleSignIn.signIn();
      if(allAccountsInDevice != null){
        _logger.log(_TAG, "starting with signing in");
        final GoogleSignInAuthentication signInAuthentication = await allAccountsInDevice.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: signInAuthentication.accessToken,
            idToken: signInAuthentication.idToken
        );
        final userCredentials = await auth.signInWithCredential(credential);
        _logger.log(_TAG, "✨ User details found! ✨ ${userCredentials.user}");

        await _firebaseRealtimeDb.createAUser(userCredentials.user!);

        return Future.value(userCredentials.user);
      }
      else{
        _logger.log(_TAG, "No Google Accounts Found");
        return Future.error("No Google Accounts Found");
      }
    }
    catch(exception){
      _logger.log(_TAG, "Oops! Looks like something went wrong... $exception");
    }

  }

}