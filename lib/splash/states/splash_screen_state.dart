import 'package:equatable/equatable.dart';

abstract class SplashScreenState extends Equatable{}
/// Example netflix logo and animation does the sound and transformation
class SplashInitialState extends SplashScreenState{
  @override
  List<Object?> get props => [];
}
/// Example netflix then after the cool part it goes to the profile page
class SplashNextScreenState extends SplashScreenState{
  @override
  List<Object?> get props => [];
}