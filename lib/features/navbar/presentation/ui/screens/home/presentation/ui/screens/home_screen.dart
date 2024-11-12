import 'package:al_quran_app/features/navbar/presentation/ui/screens/home/presentation/ui/widgets/box_features_widget.dart';
import 'package:al_quran_app/features/prayer/presentation/ui/widgets/time.dart';
import 'package:al_quran_app/features/theme/cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../core/core.dart';
import '../../../../../../../../prayer/presentation/ui/widgets/prayer_time_widget.dart';
import '../../../../../../../../theme/cubit/theme_cubit.dart';
import '../../../../../../../../video/presentation/ui/widgets/video_card.dart';
import '../widgets/home_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return Scaffold(
          backgroundColor: Theme.of(context).bgScaffold3,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).container1,
                    image: themeState.isDark
                        ? const DecorationImage(
                            image: AssetImage('assets/images/dark_image.png'),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: const Column(
                    children: [
                      SizedBox(height: 30),
                      HomeHeaderWidget(),
                      SizedBox(height: 40),
                      Time(),
                      SizedBox(height: 35),
                      PrayerTimeWidget(),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).container2,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'All Features',
                                  style: TextStyles.textMdDefault.copyWith(
                                    color: Theme.of(context).textBoxFeatures,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                BoxFeaturesWidget(
                                  icon: Icons.book,
                                  name: 'Alquran',
                                  onTap: () {
                                    context.go('/listQuran');
                                  },
                                ),
                                BoxFeaturesWidget(
                                  icon: Icons.alarm,
                                  name: 'Adzan',
                                  onTap: () {},
                                ),
                                BoxFeaturesWidget(
                                  icon: Icons.location_on,
                                  name: 'Qiblat',
                                  onTap: () {},
                                ),
                                BoxFeaturesWidget(
                                  icon: Icons.monetization_on,
                                  name: 'Donation',
                                  onTap: () {},
                                ),
                                BoxFeaturesWidget(
                                  icon: Icons.list,
                                  name: 'All',
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(0),
                        child: const VideoCard(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
