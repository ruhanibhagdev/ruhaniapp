import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ruhaniapp/splash/splash_screen_page.dart';
import '../home/home_screen_page.dart';
import '../home/timer_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter{

  List<AutoRoute> get routes => [
    AutoRoute(
        initial: true,
        page: SplashRouteRoute.page,
        path: "/splash"
    ),
    AutoRoute(
        page: HomeRouteRoute.page,
        path: "/home"
    ),
    AutoRoute(
        page: TimerRoute.page,
        path: "/home"
    )
  ];

}