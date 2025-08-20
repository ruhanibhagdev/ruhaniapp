import 'package:freezed_annotation/freezed_annotation.dart';
part 'onboarding_screen_states.freezed.dart';

@freezed
class OnboardingScreenStates with _$OnboardingScreenStates{
  const factory OnboardingScreenStates.displayOnboardingView() = _DisplayOnboardingView;
  const factory OnboardingScreenStates.loadingView() = _DisplayLoadingView;
  const factory OnboardingScreenStates.errorView(String errorMessage) = _DisplayErrorView;
  const factory OnboardingScreenStates.startNextScreen() = _StartNextScreen;
}