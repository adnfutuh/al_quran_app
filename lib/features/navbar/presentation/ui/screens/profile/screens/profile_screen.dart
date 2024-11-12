import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:al_quran_app/features/theme/cubit/theme_cubit.dart';

import '../../../../../../theme/cubit/theme_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Profile Screen'),
            actions: [
              IconButton(
                icon: Icon(state.isDark ? Icons.light_mode : Icons.dark_mode),
                onPressed: () {
                  // Toggle the theme when button is pressed
                  context.read<ThemeCubit>().toggleTheme();
                },
              ),
            ],
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                // Toggle theme on button click
                context.read<ThemeCubit>().toggleTheme();
              },
              child: Text(state.isDark
                  ? 'Switch to Light Mode'
                  : 'Switch to Dark Mode'),
            ),
          ),
        );
      },
    );
  }
}
