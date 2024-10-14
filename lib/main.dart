import 'package:al_quran_app/core/di/injector.dart';
import 'package:al_quran_app/core/routes/routes_config.dart';
import 'package:flutter/material.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RoutesConfig.appRouter,
    );
  }
}
