import 'package:al_quran_app/features/prayer_time/screens/prayer_time_screen.dart';
import 'package:al_quran_app/presentation/widgets/bottom_nav_widget.dart';
import 'package:go_router/go_router.dart';

import '../../features/book_mark/screens/book_mark_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/prayer/presentation/ui/screens/quran_screen.dart';
import '../../features/profile/screens/profile_screen.dart';

class RoutesConfig {
  static final GoRouter appRouter = GoRouter(
    initialLocation: '/navbar',
    routes: [
      GoRoute(
        path: '/navbar',
        builder: (context, state) => const BottomNavWidget(),
        routes: [
          GoRoute(
            path: 'home',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: 'bookmark',
            builder: (context, state) => const BookMarkScreen(),
          ),
          GoRoute(
            path: 'pryertime',
            builder: (context, state) => const PrayerTimeScreen(),
          ),
          GoRoute(
            path: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/quran/:id',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '0') ?? 0;
          return QuranScreen(surahId: id);
        },
      )
    ],
  );
}
