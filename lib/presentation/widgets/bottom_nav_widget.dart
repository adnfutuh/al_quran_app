import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation/cubit/bottomnav_cubit.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/book_mark/screens/book_mark_screen.dart';
import '../../features/prayer_time/screens/prayer_time_screen.dart';
import '../../features/profile/screens/profile_screen.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          final currentIndex = state.map(
            initial: (_) => 0,
            changed: (changed) => changed.index,
          );

          return IndexedStack(
            index: currentIndex,
            children: const [
              HomeScreen(),
              BookMarkScreen(),
              PrayerTimeScreen(),
              ProfileScreen(),
            ],
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          final currentIndex = state.map(
            initial: (_) => 0,
            changed: (changed) => changed.index,
          );

          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.cyan,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.black,
            currentIndex: currentIndex,
            onTap: (index) {
              context.read<BottomNavCubit>().changeTab(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark), label: 'Bookmark'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_time), label: 'Jadwal Sholat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          );
        },
      ),
    );
  }
}