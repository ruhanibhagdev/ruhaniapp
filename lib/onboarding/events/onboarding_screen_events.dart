import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../base/duration_model.dart';

part 'onboarding_screen_events.freezed.dart';

@freezed
class OnboardingScreenEvents with _$OnboardingScreenEvents{
  const factory OnboardingScreenEvents.InitializeOnboardingEvent() = InitializeOnboardingEvent;
  const factory OnboardingScreenEvents.StartGoogleSignInEvent() = StartGoogleSignInEvent;
  const factory OnboardingScreenEvents.StartAppleSignInEvent() = StartAppleSignInEvent;
 }