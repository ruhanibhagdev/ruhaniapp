import 'package:injectable/injectable.dart';
import 'package:ruhaniapp/router/app_router.gr.dart';
@module
abstract class RegisterModule{

  @singleton
  AppRouter get appRouter => AppRouter();

}