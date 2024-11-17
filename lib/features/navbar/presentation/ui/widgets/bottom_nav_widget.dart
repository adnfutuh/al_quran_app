import 'package:al_quran_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/prayer/presentation/ui/screens/prayer_screen.dart';
import '../../cubit/bottomnav_cubit.dart';
import '../screens/home/presentation/ui/screens/home_screen.dart';
import '../screens/note/presentation/ui/screens/note_screen.dart';
import '../screens/profile/screens/profile_screen.dart';

class BottomNavWidget extends StatelessWidget {
  final Widget child;

  const BottomNavWidget({super.key, required this.child});

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
              PrayerScreen(),
              NoteScreen(),
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
            selectedItemColor: Theme.of(context).boxFeatures,
            unselectedItemColor: Theme.of(context).textUnselect,
            backgroundColor: Theme.of(context).bgNavBar,
            currentIndex: currentIndex,
            onTap: (index) {
              context.read<BottomNavCubit>().changeTab(index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.house,
                    size: 20,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.handsHolding,
                    size: 20,
                  ),
                  label: 'Do\'a'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.clock,
                    size: 20,
                  ),
                  label: 'My Notes'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.user,
                    size: 20,
                  ),
                  label: 'Profile'),
            ],
          );
        },
      ),
    );
  }
}
