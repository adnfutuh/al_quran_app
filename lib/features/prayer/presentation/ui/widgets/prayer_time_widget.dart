import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../cubit/prayer_cubit.dart';

class PrayerTimeWidget extends StatefulWidget {
  const PrayerTimeWidget({super.key});

  @override
  State<PrayerTimeWidget> createState() => _PrayerTimeWidgetState();
}

class _PrayerTimeWidgetState extends State<PrayerTimeWidget> {
  @override
  void initState() {
    super.initState();
    // Memanggil fungsi untuk mendapatkan waktu sholat berdasarkan lokasi
    GetIt.I<PrayerCubit>().getPrayerTimeBasedOnLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.I<PrayerCubit>(),
      child: Column(
        children: [
          BlocBuilder<PrayerCubit, PrayerState>(
            builder: (context, state) {
              log(state.runtimeType.toString());
              return state.maybeWhen(
                success: (prayerTime) {
                  return Column(
                    children: [
                      Text('Dzuhur: ${prayerTime.dhuhr}'),
                    ],
                  );
                },
                error: (error) {
                  return Text('Error: ${error.message}');
                },
                orElse: () {
                  return const Text("Loading...");
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
