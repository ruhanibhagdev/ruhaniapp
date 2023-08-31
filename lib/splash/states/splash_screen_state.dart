import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_screen_state.freezed.dart';

@freezed
class SplashScreenState with _$SplashScreenState{
  const factory SplashScreenState.SplashInitialState() = _SplashInitialState;
  const factory SplashScreenState.SplashNextScreenState() = _SplashNextScreenState;
}