import 'package:al_quran_app/features/intro/presentation/ui/screens/splash_page.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/presentation/ui/screens/prayer_detail_screen.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/presentation/ui/screens/prayer_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/listquran/presentation/ui/screens/list_quran_sccreen.dart';
import '../../features/navbar/presentation/ui/screens/home/presentation/ui/screens/home_screen.dart';
import '../../features/navbar/presentation/ui/screens/note/presentation/ui/screens/note_screen.dart';
import '../../features/navbar/presentation/ui/widgets/bottom_nav_widget.dart';
import '../../features/quran/presentation/ui/screens/quran_screen.dart';
import '../../features/navbar/presentation/ui/screens/profile/screens/profile_screen.dart';
import '../../features/video/presentation/ui/screens/video_detail_screen.dart';

class RoutesConfig {
  static final GoRouter appRouter = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      ShellRoute(
        navigatorKey: GlobalKey<NavigatorState>(),
        builder: (context, state, child) {
          return BottomNavWidget(child: child);
        },
        routes: [
          GoRoute(
            path: '/navbar',
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: 'home',
                builder: (context, state) => const HomeScreen(),
              ),
              GoRoute(
                path: 'Prayer',
                builder: (context, state) => const PrayerScreen(),
              ),
              GoRoute(
                path: 'note',
                builder: (context, state) => const NoteScreen(),
              ),
              GoRoute(
                path: 'profile',
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/listQuran',
        builder: (context, state) => const ListQuranScreen(),
      ),
      GoRoute(
        path: '/quran/:id',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '0') ?? 0;
          return QuranScreen(surahId: id);
        },
      ),
      GoRoute(
        path: '/prayer/:id',
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '0') ?? 0;
          return PrayerDetailScreen(id: id);
        },
      ),
      GoRoute(
        path: '/video/:videoId',
        builder: (context, state) {
          final videoId = state.pathParameters['videoId'] ?? '';
          return VideoDetailScreen(videoId: videoId);
        },
      ),
    ],
  );
}
