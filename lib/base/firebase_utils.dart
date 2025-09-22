import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'app_constants.dart';
import 'firebase_realtime_db.dart';
import 'logger_utils.dart';

class FirebaseUtils {

  final _logger = LoggerUtils();
  final _TAG = "Firebase Utils";
  final _firebaseRealtimeDb = FirebaseRealtimeDb();
  String? clientId;
  String? serverClientId;
  GoogleSignInAccount? _currentUser;
  bool _isAuthorized = false; // has granted permissions?
  String _contactText = '';
  String _errorMessage = '';
  String _serverAuthCode = '';
  List<String> scopes = <String>[
    'https://www.googleapis.com/auth/contacts.readonly',
  ];

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

  Future<void> startGoogleSignIn() async{
    _logger.log(_TAG, "starting with signing in");
    User? currentUser;


    final GoogleSignIn signIn = GoogleSignIn.instance;
    signIn
        .initialize(clientId: clientId, serverClientId: serverClientId)
        .then((_) {
      signIn.authenticationEvents
          .listen(_handleAuthenticationEvent)
          .onError(_handleAuthenticationError);

      /// This example always uses the stream-based approach to determining
      /// which UI state to show, rather than using the future returned here,
      /// if any, to conditionally skip directly to the signed-in state.
      signIn.attemptLightweightAuthentication();
    });
  }

  Future<void> _handleAuthenticationEvent(GoogleSignInAuthenticationEvent event) async {
    // #docregion CheckAuthorization
    final GoogleSignInAccount? user = // ...
    // #enddocregion CheckAuthorization
    switch (event) {
      GoogleSignInAuthenticationEventSignIn() => event.user,
      GoogleSignInAuthenticationEventSignOut() => null,
    };

    // Check for existing authorization.
    // #docregion CheckAuthorization
    final GoogleSignInClientAuthorization? authorization =
    await user?.authorizationClient.authorizationForScopes(scopes);
    // #enddocregion CheckAuthorization

    _currentUser = user;
    _isAuthorized = authorization != null;
    _errorMessage = '';

    if(_currentUser != null){

      ///Fetch only the google data
      SharedPreferences autoRemember = await SharedPreferences.getInstance();
      await autoRemember.setString(AppConstants.kUserUniqueID, _currentUser?.id ?? '');
      await autoRemember.setString(AppConstants.kUserName, _currentUser?.displayName ?? '');
      await autoRemember.setString(AppConstants.kUserEmail, _currentUser?.email ?? '');
      await autoRemember.setBool(AppConstants.kUserSignInSuccess, true);
      await _firebaseRealtimeDb.createAUser(_currentUser!);
      _logger.log(_TAG, "Storing user details $_currentUser");

    }
  }

  Future<void> _handleAuthenticationError(Object e) async {
    _currentUser = null;
    _isAuthorized = false;
    _errorMessage = e is GoogleSignInException
        ? _errorMessageFromSignInException(e)
        : 'Unknown error: $e';
  }

  String _errorMessageFromSignInException(GoogleSignInException e) {
    // In practice, an application should likely have specific handling for most
    // or all of the, but for simplicity this just handles cancel, and reports
    // the rest as generic errors.
    return switch (e.code) {
      GoogleSignInExceptionCode.canceled => 'Sign in canceled',
      _ => 'GoogleSignInException ${e.code}: ${e.description}',
    };
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