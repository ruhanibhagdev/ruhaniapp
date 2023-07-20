import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruhaniapp/base/color_constants.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/home/timer_page.dart';
import 'package:ruhaniapp/router/app_router.dart';
import 'package:ruhaniapp/splash/states/splash_screen_event.dart';
import 'package:ruhaniapp/splash/states/splash_screen_state.dart';
import 'package:ruhaniapp/splash/viewstate/splash_bloc.dart';
import '../injector/injection.dart';

@RoutePage()
class SplashScreenPage extends StatefulWidget{
  final _logger = locator<LoggerUtils>();
  final _TAG = "SplashScreenPage";
  @override
  State<StatefulWidget> createState() {
    _logger.log(_TAG, "Step 1 - Inside the eggpizzaplant create state");
    return _SplashScreenState();
  }

}

class _SplashScreenState extends State<SplashScreenPage>{
  final _logger = locator<LoggerUtils>();
  final _TAG = "SplashScreenPageState";

  @override
  void didChangeDependencies() {
    _logger.log(_TAG, "Step 2 - Inside the eggpizzaplant did change Dependencies");
    BlocProvider.of<SplashBloc>(context).add(FirstSplashEvent());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _logger.log(_TAG, "Step 3 - Inside the eggpizzaplant build state");
    return Scaffold(
      backgroundColor: ColorConstants.klogoBackgroundColor,
      body: BlocConsumer<SplashBloc, SplashScreenState>(
        listener: (BuildContext context, SplashScreenState state){
          if (state is SplashNextScreenState){
            context.router.replace(const TimerRoute());
          }
        },
        builder: (BuildContext context, SplashScreenState state){
          return Center(
              child: Image.asset("assets/images/logo.png")
          );
        }
      )
    );
  }
}