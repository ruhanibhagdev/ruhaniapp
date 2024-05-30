import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ruhaniapp/splash/splash_screen.dart';
import '../home/home_screen.dart';
import '../home/timer_page.dart';
import '../lap_info/lap_info_screen.dart';
import '../speechToText/speech_to_text_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter{

  List<AutoRoute> get routes => [
    AutoRoute(
        initial: true,
        page: SplashRoute.page,
        path: "/splash"
    ),
    AutoRoute(
        page: HomeRoute.page,
        path: "/home"
    ),
    AutoRoute(
        page: TimerRoute.page,
        path: "/home"
    ),
    AutoRoute(
        page: LapInfoRoute.page,
        path: "/lapInfo"
    )
  ];

}