import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/base/color_constants.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/router/app_router.dart';
import 'package:ruhaniapp/splash/states/splash_screen_event.dart';
import 'package:ruhaniapp/splash/states/splash_screen_state.dart';
import 'package:ruhaniapp/splash/viewstate/splash_bloc.dart';
import '../injector/injection.dart';

@RoutePage()
class SplashScreen extends StatelessWidget{

  final _logger = locator<LoggerUtils>();
  final _TAG = "SplashScreenPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.klogoBackgroundColor,
      body: BlocProvider<SplashBloc>(
        create: (BuildContext context)=>SplashBloc()..add(const SplashScreenEvent.InitSplashEvent()),
        child: BlocConsumer<SplashBloc, SplashScreenState>(
            listener: (BuildContext context, SplashScreenState state){
              state.whenOrNull(
                  SplashNextScreenState: (){
                    //context.router.replace(const TimerRoute());
                    //context.router.replace(const SpeechToTextRoute());
                    context.router.replace(const HomeRoute());
                  }
              );
            },
            builder: (BuildContext context, SplashScreenState state){
              return Center(
                  child: Image.asset("assets/images/logo.png")
              );
            }
        ),
      )
    );
  }
}