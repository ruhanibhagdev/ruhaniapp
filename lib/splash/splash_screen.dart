import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rufit/splash/states/splash_screen_event.dart';
import 'package:rufit/splash/states/splash_screen_state.dart';
import 'package:rufit/splash/viewstate/splash_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../base/app_constants.dart';
import '../base/color_constants.dart';
import '../base/logger_utils.dart';
import '../injector/injection.dart';
import '../router/app_router.dart';

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
                  SplashNextScreenState: () async{
                    //context.router.replace(const TimerRoute());
                    //context.router.replace(const SpeechToTextRoute());
                    final SharedPreferences autoRememberer = await SharedPreferences.getInstance();
                    final bool? isIntroSeen = autoRememberer.getBool(AppConstants.kUserIntroKey);
                    final bool? isUserSignedIn = autoRememberer.getBool(AppConstants.kUserSignInSuccess);
                    _logger.log(_TAG, "Is user being signed in? $isUserSignedIn");
                    _logger.log(_TAG, "Is intro seeing? $isIntroSeen");
                    if(isUserSignedIn != null && isUserSignedIn == true){
                      if(isIntroSeen != null && isIntroSeen == true){
                        context.router.replace(const HomeRoute());
                      }
                      else{
                        context.router.replace(const IntroRoute());
                      }
                    }
                    else{
                      context.router.replace(const OnBoardingRoute());
                    }
                    //context.router.replace(const PlaygroundRoute());
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleAuthService()));
                  }
              );
            },
            builder: (BuildContext context, SplashScreenState state){
              return Center(
                  child: Image.asset("assets/images/intro_1.gif")
              );
            }
        ),
      )
    );
  }
}