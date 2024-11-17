import 'package:al_quran_app/core/di/injector.dart';
import 'package:al_quran_app/core/routes/router_config.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/note/presentation/cubit/note_cubit.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/presentation/cubit/prayer_cubit.dart';
import 'package:al_quran_app/features/theme/cubit/theme_cubit.dart';
import 'package:al_quran_app/features/theme/cubit/theme_state.dart';
import 'package:al_quran_app/features/video/presentation/cubit/video_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import 'features/audio/presentation/cubit/audio_cubit.dart';
import 'features/listquran/presentation/cubit/listquran_cubit.dart';
import 'features/navbar/presentation/cubit/bottomnav_cubit.dart';
import 'features/navbar/presentation/ui/screens/home/presentation/cubit/location_cubit.dart';
import 'features/prayertime/presentation/cubit/prayer_time_cubit.dart';
import 'features/quran/presentation/cubit/quran_cubit.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetIt.I<ListquranCubit>()..getListQuranData(),
          ),
          BlocProvider(
            create: (context) => GetIt.I<QuranCubit>(),
          ),
          BlocProvider(
            create: (context) => GetIt.I<LocationCubit>()..fetchLocation(),
          ),
          BlocProvider(
            create: (context) => GetIt.I<PrayerTimeCubit>()..fetchPrayerTime(),
          ),
          BlocProvider(
            create: (context) => BottomNavCubit(),
          ),
          BlocProvider(
            create: (context) => AudioCubit(),
          ),
          BlocProvider(
            create: (context) => GetIt.I<VideoCubit>(),
          ),
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
          BlocProvider(
            create: (context) => GetIt.I<PrayerCubit>(),
          ),
          BlocProvider(
            create: (context) => GetIt.I<NoteCubit>(),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: state.isDark ? ThemeData.dark() : ThemeData.light(),
              routerConfig: RoutesConfig.appRouter,
            );
          },
        ),
      ),
    );
  }
}
