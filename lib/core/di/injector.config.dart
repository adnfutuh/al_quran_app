// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../../features/listquran/data/datasources/list_quran_remote_datasources.dart'
    as _i529;
import '../../features/listquran/data/repositories/list_quran_repositories.dart'
    as _i3;
import '../../features/listquran/domain/usecases/get_list__quran.dart' as _i459;
import '../../features/listquran/presentation/cubit/listquran_cubit.dart'
    as _i1005;
import '../../features/navbar/presentation/cubit/bottomnav_cubit.dart' as _i818;
import '../../features/navbar/presentation/ui/screens/home/domain/usecases/get_location_data.dart'
    as _i439;
import '../../features/navbar/presentation/ui/screens/home/presentation/cubit/location_cubit.dart'
    as _i257;
import '../../features/prayer/data/datasources/prayer_time_datasources.dart'
    as _i279;
import '../../features/prayer/data/repositories/prayer_time_repositories.dart'
    as _i220;
import '../../features/prayer/domain/usecases/get_location_data.dart' as _i966;
import '../../features/prayer/presentation/cubit/prayer_cubit.dart' as _i918;
import '../../features/quran/data/datasources/quran_remote_datasources.dart'
    as _i698;
import '../../features/quran/data/repositories/quran_repositories.dart'
    as _i518;
import '../../features/quran/domain/usecases/get_quran.dart' as _i612;
import '../../features/quran/presentation/cubit/quran_cubit.dart' as _i431;
import '../core.dart' as _i351;
import '../services/geolocation/geolocation_service.dart' as _i591;
import '../services/http/http_client_service.dart' as _i274;
import '../services/http/internet_connection_service.dart' as _i1024;
import '../services/logger/logger.dart' as _i663;
import '../services/logger/logger_service.dart' as _i327;
import 'register_module.dart' as _i291;

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
  gh.factory<_i895.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i974.Logger>(() => registerModule.logger);
  gh.singleton<_i818.BottomNavCubit>(() => _i818.BottomNavCubit());
  gh.factory<_i361.Dio>(
    () => registerModule.dio(),
    instanceName: 'base',
  );
  gh.lazySingleton<_i591.GeolocationService>(
      () => _i591.GeolocationServiceImpl());
  gh.factory<bool>(
    () => registerModule.showDebug,
    instanceName: 'show_debug',
  );
  gh.factory<_i361.Dio>(
    () => registerModule.dioClient(),
    instanceName: 'client',
  );
  gh.lazySingleton<_i327.LoggerService>(() => _i327.LoggerServiceImpl(
        logger: gh<_i974.Logger>(),
        showDebug: gh<bool>(instanceName: 'show_debug'),
      ));
  gh.lazySingleton<_i1024.InternetConnectionService>(() =>
      _i1024.InternetConnectionServiceImpl(
          connectivity: gh<_i895.Connectivity>()));
  gh.lazySingleton<_i439.GetLocationData>(
      () => _i439.GetLocationData(geoService: gh<_i591.GeolocationService>()));
  gh.lazySingleton<_i274.HttpClientService>(
    () => _i274.HttpClientServiceImpl(
      dio: gh<_i361.Dio>(instanceName: 'base'),
      internetConnectionService: gh<_i1024.InternetConnectionService>(),
      loggerService: gh<_i663.LoggerService>(),
    ),
    instanceName: 'base',
  );
  gh.singleton<_i257.LocationCubit>(
      () => _i257.LocationCubit(getLocationData: gh<_i439.GetLocationData>()));
  gh.lazySingleton<_i529.ListQuranRemoteDatasources>(() =>
      _i529.ListQuranRemoteDatasourcesImpl(
          httpClientService:
              gh<_i351.HttpClientService>(instanceName: 'base')));
  gh.lazySingleton<_i698.QuranRemoteDatasource>(() =>
      _i698.QuranRemoteDatasourceImpl(
          httpClientService:
              gh<_i351.HttpClientService>(instanceName: 'base')));
  gh.lazySingleton<_i274.HttpClientService>(
    () => _i274.HttpClientServiceImplClient(
      dio: gh<_i361.Dio>(instanceName: 'client'),
      internetConnectionService: gh<_i1024.InternetConnectionService>(),
      loggerService: gh<_i663.LoggerService>(),
    ),
    instanceName: 'client',
  );
  gh.lazySingleton<_i279.PrayerTimeDatasources>(() =>
      _i279.PrayerTimeDatasourcesImpl(
        httpClientService: gh<_i351.HttpClientService>(instanceName: 'base'),
        geoService: gh<_i591.GeolocationService>(),
      ));
  gh.lazySingleton<_i518.QuranRepository>(() => _i518.QuranRepositoryImpl(
      quranRemoteDatasource: gh<_i698.QuranRemoteDatasource>()));
  gh.lazySingleton<_i220.PrayerTimeRepositories>(
      () => _i220.PrayerTimeRepositoriesImpl(
            prayerTimeDatasources: gh<_i279.PrayerTimeDatasources>(),
            geoService: gh<_i591.GeolocationService>(),
          ));
  gh.lazySingleton<_i3.ListQuranRepository>(() => _i3.ListQuranRepositoryImpl(
      listQuranRemoteDatasource: gh<_i529.ListQuranRemoteDatasources>()));
  gh.lazySingleton<_i612.GetQuran>(
      () => _i612.GetQuran(repository: gh<_i518.QuranRepository>()));
  gh.singleton<_i431.QuranCubit>(() => _i431.QuranCubit(gh<_i612.GetQuran>()));
  gh.lazySingleton<_i966.GetPrayerTimeBasedOnLocation>(
      () => _i966.GetPrayerTimeBasedOnLocation(
            geoService: gh<_i591.GeolocationService>(),
            prayerTimeDatasources: gh<_i279.PrayerTimeDatasources>(),
          ));
  gh.lazySingleton<_i459.GetListQuran>(
      () => _i459.GetListQuran(repository: gh<_i3.ListQuranRepository>()));
  gh.singleton<_i1005.ListquranCubit>(
      () => _i1005.ListquranCubit(gh<_i459.GetListQuran>()));
  gh.singleton<_i918.PrayerCubit>(() => _i918.PrayerCubit(
      getPrayerTimeBasedOnLocation: gh<_i966.GetPrayerTimeBasedOnLocation>()));
  return getIt;
}

class _$RegisterModule extends _i291.RegisterModule {}
