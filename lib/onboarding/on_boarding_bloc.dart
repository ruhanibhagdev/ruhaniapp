import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/onboarding/states/onboarding_screen_states.dart';
import '../base/firebase_utils.dart';
import '../base/logger_utils.dart';
import 'events/onboarding_screen_events.dart';

class OnBoardingBloc extends Bloc<OnboardingScreenEvents, OnboardingScreenStates> {
  final _logger = LoggerUtils();
  final _TAG = "OnBoardingBloc";
  FirebaseUtils firebaseUtils = FirebaseUtils();

  OnBoardingBloc() : super(const OnboardingScreenStates.displayOnboardingView()){
    on<InitializeOnboardingEvent>(_initialize);
    on<StartGoogleSignInEvent>(_startGoogleSignIn);
    on<StartAppleSignInEvent>(_startAppleSignIn);
  }

  Future<void> _initialize(InitializeOnboardingEvent event, Emitter<OnboardingScreenStates> emit) async{

    emit(const OnboardingScreenStates.displayOnboardingView());

  }

  Future<void> _startGoogleSignIn(StartGoogleSignInEvent event, Emitter<OnboardingScreenStates> emit) async{

    emit(const OnboardingScreenStates.loadingView());

    await firebaseUtils
        .initializeFirebase()
        .then((User? currentUser) async {
      if (currentUser == null) {

        await firebaseUtils.startGoogleSignIn();
      } else {
        _logger.log(_TAG, "Current user details $currentUser");
        ///Fetch only the google data
        /*var googleUser = currentUser.providerData.firstWhere((UserInfo currentUserInfo) => currentUserInfo.providerId == "google.com");
                          SharedPreferences autoRemember = await SharedPreferences.getInstance();
                          await autoRemember.setString(AppConstants.kUserUniqueID, currentUser.uid);
                          await autoRemember.setString(AppConstants.kUserName, googleUser.displayName!);
                          await autoRemember.setString(AppConstants.kUserEmail, googleUser.email!);
                          await autoRemember.setBool(AppConstants.kUserSignInSuccess, true);
                          await _firebaseRealtimeDb.createAUser(currentUser);
                          _logger.log(_TAG, "Storing user details $currentUser");
                          await context.router.replace(const IntroRoute());*/
      }
    });

  }

  Future<void> _startAppleSignIn(StartAppleSignInEvent event, Emitter<OnboardingScreenStates> emit) async{

  }
}