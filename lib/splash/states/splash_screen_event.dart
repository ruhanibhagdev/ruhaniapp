import 'package:equatable/equatable.dart';

abstract class SplashScreenEvent extends Equatable{}

class InitialSplashEvent extends SplashScreenEvent{
  @override
  List<Object?> get props => [];
}