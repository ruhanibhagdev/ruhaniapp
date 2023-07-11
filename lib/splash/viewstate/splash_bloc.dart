import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/main.dart';
import 'package:ruhaniapp/splash/states/splash_screen_state.dart';
import '../states/splash_screen_event.dart';

class SplashBloc extends Bloc<SplashScreenEvent, SplashScreenState>{
  SplashBloc():super(SplashInitialState()) {
    on<FirstSplashEvent>(_init);
  }

  Future<void> _init(SplashScreenEvent event, Emitter<SplashScreenState> emit) async{
    emit(SplashInitialState());
    await    Future.delayed(Duration(milliseconds: 2023));
    emit(SplashNextScreenState());
  }
}