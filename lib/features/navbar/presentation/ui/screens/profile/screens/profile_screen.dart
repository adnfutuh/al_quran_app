import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/profile/widgets/app_settings.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/profile/widgets/feature_settings.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/profile/widgets/general.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/profile/widgets/legal.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/profile/widgets/logout.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/profile/widgets/social.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/profile/widgets/user_info.dart';
import 'package:flutter/material.dart';

import '../widgets/communication_preferences.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> profilesMenu = const [
      UserInfo(),
      FeatureSettings(),
      AppSettings(),
      CommunicationPreferences(),
      General(),
      Legal(),
      Social(),
      Logout(),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).bgScaffold4,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemCount: profilesMenu.length,
          itemBuilder: (context, index) {
            return profilesMenu[index];
          },
        ),
      ),
    );
  }
}
