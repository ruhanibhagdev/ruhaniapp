import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ruhaniapp/base/firebase_realtime_db.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class FirebaseUtils {

  final _logger = LoggerUtils();
  final _TAG = "Firebase Utils";
  final _firebaseRealtimeDb = FirebaseRealtimeDb();

  Future<User?> initializeFirebase() async {
    try {
      _logger.log(_TAG, "Starting with firebase initialisation");
      FirebaseApp firebaseApp = await Firebase.initializeApp();
      User? currentUser = FirebaseAuth.instance.currentUser;

      if (currentUser != null) {
        _logger.log(_TAG, "User has signed in");
        // this is for us to remember
        // user has already logged in, don't irritate by showing log in again :)
        return Future.value(currentUser);
      } else {
        return null;
      }
    } catch (exception) {
      _logger.log(_TAG, "Failed to initialize Firebase: $exception");
      return null;
    }
    

  }

  Future<User?> startGoogleSignIn() async{
    _logger.log(_TAG, "starting with signing in");
    User? currentUser;
    /*try{
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? allAccountsInDevice = await googleSignIn.signIn();
      if(allAccountsInDevice != null){
        FirebaseAuth auth = FirebaseAuth.instance;

        final GoogleSignInAuthentication signInAuthentication = await allAccountsInDevice.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: signInAuthentication.idToken,
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
    }*/

  }

  Future<void> startAppleSignIn() async{
    try{
      final FirebaseAuth firebaseAuth;
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
      _logger.log( _TAG,  "Credentials $credential");
      _logger.log( _TAG,  "Authorization code ${credential.authorizationCode}");
      _logger.log( _TAG,  "Authorization email ${credential.email}");
      _logger.log( _TAG,  "Given name ${credential.givenName}");
      _logger.log( _TAG,  "Family name ${credential.familyName}");
      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );

      await FirebaseAuth.instance.signInWithCredential(oauthCredential);
      await _firebaseRealtimeDb.createAppleUser(credential.authorizationCode, credential.givenName, credential.email);
      
    }
    catch(exception){

    }

  }

  Future<void> signOutApple() async {
    try {
      await FirebaseAuth.instance.signOut();
      _logger.log(_TAG, "Successfully signed out from Apple account.");
    } catch (exception) {
      _logger.log(_TAG, "Error signing out from Apple account: $exception");
    }
  }
}