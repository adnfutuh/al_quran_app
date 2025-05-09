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
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../../features/audio/presentation/cubit/audio_cubit.dart' as _i710;
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
import '../../features/navbar/presentation/ui/screens/note/data/datasources/note_local_datasource.dart'
    as _i1008;
import '../../features/navbar/presentation/ui/screens/note/data/repository/note_repository.dart'
    as _i226;
import '../../features/navbar/presentation/ui/screens/note/domain/entity/note.dart'
    as _i534;
import '../../features/navbar/presentation/ui/screens/note/domain/usecase/note_usecase.dart'
    as _i284;
import '../../features/navbar/presentation/ui/screens/note/presentation/cubit/note_cubit.dart'
    as _i540;
import '../../features/navbar/presentation/ui/screens/prayer/data/datasources/prayer_datasource.dart'
    as _i360;
import '../../features/navbar/presentation/ui/screens/prayer/data/repositories/prayer_repository.dart'
    as _i220;
import '../../features/navbar/presentation/ui/screens/prayer/domain/usecases/get_prayers.dart'
    as _i466;
import '../../features/navbar/presentation/ui/screens/prayer/presentation/cubit/prayer_cubit.dart'
    as _i692;
import '../../features/prayertime/data/datasources/prayer_time_datasources.dart'
    as _i307;
import '../../features/prayertime/data/repositories/prayer_time_repositories.dart'
    as _i1020;
import '../../features/prayertime/domain/usecases/get_prayer_time.dart'
    as _i298;
import '../../features/prayertime/presentation/cubit/prayer_time_cubit.dart'
    as _i275;
import '../../features/quran/data/datasources/quran_remote_datasources.dart'
    as _i698;
import '../../features/quran/data/repositories/quran_repositories.dart'
    as _i518;
import '../../features/quran/domain/usecases/get_quran.dart' as _i612;
import '../../features/quran/presentation/cubit/quran_cubit.dart' as _i431;
import '../../features/video/data/datasources/video_remote_datasource.dart'
    as _i1055;
import '../../features/video/data/repositories/video_repository.dart' as _i758;
import '../../features/video/domain/usecases/get_video.dart' as _i1050;
import '../../features/video/presentation/cubit/video_cubit.dart' as _i517;
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
  gh.singleton<_i710.AudioCubit>(() => _i710.AudioCubit());
  gh.singleton<_i818.BottomNavCubit>(() => _i818.BottomNavCubit());
  gh.singleton<_i540.NoteCubit>(() => _i540.NoteCubit());
  gh.factory<_i361.Dio>(
    () => registerModule.dio(),
    instanceName: 'base',
  );
  gh.lazySingleton<_i1008.NoteLocalDataSource>(
      () => _i1008.NoteLocalDataSourceImpl(gh<_i986.Box<_i534.Note>>()));
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
  gh.lazySingleton<_i226.NoteRepository>(
      () => _i226.NoteRepositoryImpl(gh<_i1008.NoteLocalDataSource>()));
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
  gh.lazySingleton<_i1055.VideoRemoteDatasource>(() =>
      _i1055.VideoRemoteDatasourceImpl(
          httpClientService:
              gh<_i351.HttpClientService>(instanceName: 'base')));
  gh.lazySingleton<_i529.ListQuranRemoteDatasources>(() =>
      _i529.ListQuranRemoteDatasourcesImpl(
          httpClientService:
              gh<_i351.HttpClientService>(instanceName: 'base')));
  gh.lazySingleton<_i758.VideoRepository>(
      () => _i758.VideoRepositoryImpl(gh<_i1055.VideoRemoteDatasource>()));
  gh.lazySingleton<_i360.PrayerDatasource>(() => _i360.PrayerDatasourceImpl(
      httpClientService: gh<_i351.HttpClientService>(instanceName: 'base')));
  gh.lazySingleton<_i1050.GetVideo>(
      () => _i1050.GetVideo(gh<_i758.VideoRepository>()));
  gh.singleton<_i517.VideoCubit>(
      () => _i517.VideoCubit(gh<_i1055.VideoRemoteDatasource>()));
  gh.lazySingleton<_i698.QuranRemoteDatasource>(() =>
      _i698.QuranRemoteDatasourceImpl(
          httpClientService:
              gh<_i351.HttpClientService>(instanceName: 'base')));
  gh.lazySingleton<_i284.NoteUsecase>(
      () => _i284.NoteUsecase(repository: gh<_i226.NoteRepository>()));
  gh.lazySingleton<_i307.PrayerTimeDatasources>(() =>
      _i307.PrayerTimeDatasourcesImpl(
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
  gh.lazySingleton<_i518.QuranRepository>(() => _i518.QuranRepositoryImpl(
      quranRemoteDatasource: gh<_i698.QuranRemoteDatasource>()));
  gh.lazySingleton<_i3.ListQuranRepository>(() => _i3.ListQuranRepositoryImpl(
      listQuranRemoteDatasource: gh<_i529.ListQuranRemoteDatasources>()));
  gh.lazySingleton<_i1020.PrayerTimeRepositories>(() =>
      _i1020.PrayerTimeRepositoriesImpl(gh<_i307.PrayerTimeDatasources>()));
  gh.lazySingleton<_i220.PrayerRepository>(() => _i220.PrayerRepositoryImpl(
      quranRemoteDatasource: gh<_i360.PrayerDatasource>()));
  gh.lazySingleton<_i612.GetQuran>(
      () => _i612.GetQuran(repository: gh<_i518.QuranRepository>()));
  gh.singleton<_i431.QuranCubit>(() => _i431.QuranCubit(gh<_i612.GetQuran>()));
  gh.lazySingleton<_i298.GetPrayerTimes>(
      () => _i298.GetPrayerTimes(gh<_i1020.PrayerTimeRepositories>()));
  gh.lazySingleton<_i459.GetListQuran>(
      () => _i459.GetListQuran(repository: gh<_i3.ListQuranRepository>()));
  gh.singleton<_i275.PrayerTimeCubit>(() => _i275.PrayerTimeCubit(
        gh<_i591.GeolocationService>(),
        getPrayerTimes: gh<_i298.GetPrayerTimes>(),
      ));
  gh.singleton<_i1005.ListquranCubit>(
      () => _i1005.ListquranCubit(gh<_i459.GetListQuran>()));
  gh.lazySingleton<_i466.GetPrayers>(
      () => _i466.GetPrayers(gh<_i220.PrayerRepository>()));
  gh.singleton<_i692.PrayerCubit>(
      () => _i692.PrayerCubit(gh<_i466.GetPrayers>()));
  return getIt;
}

class _$RegisterModule extends _i291.RegisterModule {}
