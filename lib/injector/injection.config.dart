// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../base/logger_utils.dart' as _i3;
import '../base/register_module.dart' as _i6;
import '../main.dart' as _i4;
import '../router/app_router.dart' as _i5;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.LoggerUtils>(() => _i3.LoggerUtils());
  gh.factory<_i4.MyApp>(() => _i4.MyApp());
  gh.singleton<_i5.AppRouter>(() => registerModule.appRouter);
  return getIt;
}

class _$RegisterModule extends _i6.RegisterModule {}
