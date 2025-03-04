// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../base/logger_utils.dart' as _i985;
import '../base/register_module.dart' as _i822;
import '../main.dart' as _i214;
import '../router/app_router.dart' as _i81;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i985.LoggerUtils>(() => _i985.LoggerUtils());
  gh.factory<_i214.MyApp>(() => _i214.MyApp());
  gh.singleton<_i81.AppRouter>(() => registerModule.appRouter);
  return getIt;
}

class _$RegisterModule extends _i822.RegisterModule {}
