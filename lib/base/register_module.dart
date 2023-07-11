import 'package:injectable/injectable.dart';

import '../router/app_router.dart';

@module
abstract class RegisterModule{

  @singleton
  AppRouter get appRouter => AppRouter();

}