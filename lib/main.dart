import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rufit/router/app_router.dart';
import 'package:rufit/splash/viewstate/splash_bloc.dart';

import 'base/app_constants.dart';
import 'base/default_firebase_options.dart';
import 'injector/injection.dart';

void main() async{
  await init();
  runApp( MyApp());
}

Future<void> init() async{
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isIOS){
    await Firebase.initializeApp();
  }
  else{
    await Firebase.initializeApp(
        name: "dev project",
        options: DefaultFirebaseOptions.getFirebaseOptions()
    );
  }



}

@injectable
class MyApp extends StatelessWidget{
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => SplashBloc()),
        ],

        child: MaterialApp.router(
            title: AppConstants.kAppName,
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: _appRouter.delegate(),
            theme: ThemeData(
              primarySwatch: Colors.deepOrange,
              textTheme: Theme.of(context).textTheme.copyWith(
                displayMedium: Theme.of(context).textTheme.displayMedium?.apply(
                  color: Colors.white
                )
              )
            ),
            builder: (context,  router) => router!
        )
    );
  }
}