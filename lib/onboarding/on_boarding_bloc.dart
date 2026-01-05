import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rufit/onboarding/states/onboarding_screen_states.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../base/app_constants.dart';
import '../base/firebase_realtime_db.dart';
import '../base/firebase_utils.dart';
import '../base/logger_utils.dart';
import 'events/onboarding_screen_events.dart';

class OnBoardingBloc extends Bloc<OnboardingScreenEvents, OnboardingScreenStates> {
  final _logger = LoggerUtils();
  final _TAG = "OnBoardingBloc";
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

  OnBoardingBloc() : super(const OnboardingScreenStates.loadingView()){
    on<InitializeOnboardingEvent>(_initialize);
    on<StartGoogleSignInEvent>(_startGoogleSignIn);
    on<StartAppleSignInEvent>(_startAppleSignIn);
    on<SignInSuccessEvent>(_handleSuccessSignIn);
  }

  Future<void> _initialize(InitializeOnboardingEvent event, Emitter<OnboardingScreenStates> emit) async{

    emit(const OnboardingScreenStates.displayOnboardingView());

  }

  Future<void> _handleSuccessSignIn(SignInSuccessEvent event, Emitter<OnboardingScreenStates> emit) async{
    emit(const OnboardingScreenStates.startNextScreen());
  }

  Future<void> _startGoogleSignIn(StartGoogleSignInEvent event, Emitter<OnboardingScreenStates> emit) async{

    emit(const OnboardingScreenStates.loadingView());
    initializeFirebase()
        .then((User? currentUser) async {
      if (currentUser == null) {

        startGoogleSignIn();
      } else {
        _logger.log(_TAG, "Current user details $currentUser");
        add(const SignInSuccessEvent());
        ///Fetch only the google data
        UserInfo googleUser;
        bool isGoogleUserFound = currentUser.providerData.any((UserInfo currentUserInfo) => currentUserInfo.providerId == "google.com");
        bool isAppleUserFound = currentUser.providerData.any((UserInfo currentUserInfo) => currentUserInfo.providerId == "apple.com");
        if(isGoogleUserFound){
          googleUser = currentUser.providerData.firstWhere((UserInfo currentUserInfo) => currentUserInfo.providerId == "google.com");
          SharedPreferences autoRemember = await SharedPreferences.getInstance();
          await autoRemember.setString(AppConstants.kUserUniqueID, currentUser.uid);
          await autoRemember.setString(AppConstants.kUserName, googleUser.displayName!);
          await autoRemember.setString(AppConstants.kUserEmail, googleUser.email!);
          await autoRemember.setBool(AppConstants.kUserSignInSuccess, true);
          //await _firebaseRealtimeDb.createAUser(googleUser!);
          _logger.log(_TAG, "Storing user details as google user was found $currentUser");
          //await context.router.replace(const IntroRoute());
        }
        else{
          googleUser = currentUser.providerData.firstWhere((UserInfo currentUserInfo) => currentUserInfo.providerId == "apple.com");
          SharedPreferences autoRemember = await SharedPreferences.getInstance();
          await autoRemember.setString(AppConstants.kUserUniqueID, currentUser.uid);
          await autoRemember.setString(AppConstants.kUserName, googleUser.displayName ?? '');
          await autoRemember.setString(AppConstants.kUserEmail, googleUser.email ?? '');
          await autoRemember.setBool(AppConstants.kUserSignInSuccess, true);
          _logger.log(_TAG, "Storing user details as apple user was found $currentUser");
        }
      }
    });


  }

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
    await signIn.signOut();
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
      add(const SignInSuccessEvent());
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

  Future<void> _startAppleSignIn(StartAppleSignInEvent event, Emitter<OnboardingScreenStates> emit) async{

  }
}