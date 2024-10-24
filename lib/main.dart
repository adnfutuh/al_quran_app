import 'package:al_quran_app/core/di/injector.dart';
import 'package:al_quran_app/core/routes/router_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/cubit/bottomnav_cubit.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: BlocProvider(
        create: (context) => BottomNavCubit(),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: RoutesConfig.appRouter,
        ),
      ),
    );
  }
}
