import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/splash/states/splash_screen_state.dart';
import '../states/splash_screen_event.dart';

class SplashBloc extends Bloc<SplashScreenEvent, SplashScreenState>{
  SplashBloc():super(const SplashScreenState.SplashInitialState()) {
    on<SplashScreenEvent>((event, emit) async{
      await event.map(
          InitSplashEvent: (event) async => _init(event, emit)
      );
    });
  }

  Future<void> _init(InitSplashView event, Emitter<SplashScreenState> emit) async{
    emit(const SplashScreenState.SplashInitialState());
    await    Future.delayed(const Duration(milliseconds: 2023));
    emit(const SplashScreenState.SplashNextScreenState());
  }
}