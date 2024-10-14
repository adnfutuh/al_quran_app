import 'package:al_quran_app/features/home/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

class RoutesConfig {
  static String home = '/';
  static GoRouter appRouter = GoRouter(initialLocation: home, routes: <GoRoute>[
    GoRoute(
      path: home,
      builder: (context, state) => const HomeScreen(),
    )
  ]);
}
