// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRouteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreenPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashScreen(),
      );
    },
    TimerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TimerPage(),
      );
    },
  };
}

/// generated route for
/// [HomeScreenPage]
class HomeRouteRoute extends PageRouteInfo<void> {
  const HomeRouteRoute({List<PageRouteInfo>? children})
      : super(
          HomeRouteRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TimerPage]
class TimerRoute extends PageRouteInfo<void> {
  const TimerRoute({List<PageRouteInfo>? children})
      : super(
          TimerRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
