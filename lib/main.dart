import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ruhaniapp/base/app_constants.dart';
import 'package:ruhaniapp/base/default_firebase_options.dart';
import 'package:ruhaniapp/injector/injection.dart';
import 'package:ruhaniapp/router/app_router.dart';
import 'package:ruhaniapp/splash/viewstate/splash_bloc.dart';

void main() async{
  await init();
  runApp( MyApp());
}

Future<void> init() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.getFirebaseOptions()
  );
  configureDependencies();

}

@injectable
class MyApp extends StatelessWidget{
  final _appRouter = locator<AppRouter>();
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