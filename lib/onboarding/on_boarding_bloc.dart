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

  }

  Future<void> _startGoogleSignIn(StartGoogleSignInEvent event, Emitter<OnboardingScreenStates> emit) async{

  }

  Future<void> _startAppleSignIn(StartAppleSignInEvent event, Emitter<OnboardingScreenStates> emit) async{

  }
}