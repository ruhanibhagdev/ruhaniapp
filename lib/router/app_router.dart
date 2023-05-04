import 'package:auto_route/annotations.dart';
import 'package:ruhaniapp/splash/splash_screen_page.dart';

import '../home/home_screen_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
    routes: [
      AutoRoute(
        initial: true,
        page: SplashScreenPage,
        path: "/splash"
      ),
      AutoRoute(
        page: HomeScreenPage,
        path: "/home"
      )
    ]
)
class $AppRouter{

}