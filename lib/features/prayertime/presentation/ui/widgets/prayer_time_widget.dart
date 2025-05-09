import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/core.dart';
import '../../cubit/prayer_time_cubit.dart';

class PrayerTimeWidget extends StatefulWidget {
  const PrayerTimeWidget({super.key});

  @override
  State<PrayerTimeWidget> createState() => _PrayerTimeWidgetState();
}

class _PrayerTimeWidgetState extends State<PrayerTimeWidget> {
  @override
  void initState() {
    super.initState();
    final cubit = GetIt.I<PrayerTimeCubit>();
    cubit.fetchPrayerTime();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = GetIt.I<PrayerTimeCubit>();

    return BlocProvider.value(
      value: cubit,
      child: Column(
        children: [
          BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
            builder: (context, state) {
              log(state.runtimeType.toString());
              log(state.toString());

              return state.maybeWhen(
                success: (prayerTime) {
                  return _buildPrayerTimeDisplay(prayerTime);
                },
                error: (error) {
                  return Text('Error: ${error.message}');
                },
                orElse: () {
                  return const CircularProgressIndicator();
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPrayerTimeDisplay(prayerTime) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildPrayerTimeColumn(
          'Fajr',
          CupertinoIcons.cloud_sun_fill,
          prayerTime.data.timings.Fajr,
        ),
        _buildPrayerTimeColumn(
          'Dhuhr',
          CupertinoIcons.sun_max_fill,
          prayerTime.data.timings.Dhuhr,
        ),
        _buildPrayerTimeColumn(
          'Asr',
          CupertinoIcons.sun_haze_fill,
          prayerTime.data.timings.Asr,
        ),
        _buildPrayerTimeColumn(
          'Maghrib',
          CupertinoIcons.cloud_moon_fill,
          prayerTime.data.timings.Maghrib,
        ),
        _buildPrayerTimeColumn(
          'Isha',
          CupertinoIcons.moon_stars_fill,
          prayerTime.data.timings.Isha,
        ),
      ],
    );
  }

  Widget _buildPrayerTimeColumn(String title, IconData icon, String time) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyles.textSmRegular.copyWith(color: Pallet.white),
        ),
        const SizedBox(height: 4),
        Icon(
          icon,
          color: Pallet.white,
        ),
        const SizedBox(height: 4),
        Text(
          time,
          style: TextStyles.textSmRegular.copyWith(color: Pallet.white),
        ),
      ],
    );
  }
}
