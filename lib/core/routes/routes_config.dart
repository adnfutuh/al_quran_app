import 'package:go_router/go_router.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/prayer/presentation/ui/screens/quran_screen.dart';

class RoutesConfig {
  static String home = '/';
  static String quranDetail = '/quran/:id';

  static GoRouter appRouter = GoRouter(
    initialLocation: home,
    routes: <GoRoute>[
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: quranDetail,
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '0') ??
              0; // Mengonversi string ke int
          return QuranScreen(
              surahId: id); // Pastikan QuranScreen menerima parameter
        },
      ),
    ],
  );
}
