import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../base/duration_model.dart';

part 'onboarding_screen_events.freezed.dart';

@freezed
sealed class OnboardingScreenEvents with _$OnboardingScreenEvents{
  const factory OnboardingScreenEvents.InitializeOnboarding() = InitializeOnboardingEvent;
  const factory OnboardingScreenEvents.StartGoogleSignIn() = StartGoogleSignInEvent;
  const factory OnboardingScreenEvents.SignInSuccess() = SignInSuccessEvent;
  const factory OnboardingScreenEvents.SignInFailed() = SignInFailedEvent;
  const factory OnboardingScreenEvents.StartAppleSignIn() = StartAppleSignInEvent;
 }