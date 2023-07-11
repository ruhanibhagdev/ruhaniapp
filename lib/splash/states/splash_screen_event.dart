import 'package:equatable/equatable.dart';

abstract class SplashScreenEvent extends Equatable{}
//Event: Anything the user does on the screen
class FirstSplashEvent extends SplashScreenEvent{
  @override
  List<Object?> get props => [];
}