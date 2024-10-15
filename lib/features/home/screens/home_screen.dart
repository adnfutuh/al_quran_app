import 'package:al_quran_app/core/design_system/design_system.dart';
import 'package:al_quran_app/features/prayer/ui/widgets/prayer_time_widget.dart';
import 'package:flutter/material.dart';

import '../ui/widgets/home_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallet.whiteScaffold,
      body: const Column(
        children: [
          HomeHeaderWidget(),
          PrayerTimeWidget(),
          SizedBox(height: 100),
          Center(child: Text('Feature Widget')),
          SizedBox(height: 100),
          Center(child: Text(' Sholat Time Widget')),
          Spacer(),
          Center(child: Text('Bottom Navigation')),
        ],
      ),
    );
  }
}
