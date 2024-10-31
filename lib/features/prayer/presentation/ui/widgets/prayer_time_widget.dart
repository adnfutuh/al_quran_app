import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../../../core/core.dart';
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
    final cubit = GetIt.I<PrayerCubit>();
    if (!cubit.isClosed) {
      cubit.fetchPrayerTime();
    }
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
              log(state.toString());
              return state.maybeWhen(
                success: (prayerTime) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Fajr',
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                              Text(
                                prayerTime.data.timings.Fajr,
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Dhuhr',
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                              Text(
                                prayerTime.data.timings.Dhuhr,
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Asr',
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                              Text(
                                prayerTime.data.timings.Asr,
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Maghrib',
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                              Text(
                                prayerTime.data.timings.Maghrib,
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Isha',
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                              Text(
                                prayerTime.data.timings.Isha,
                                style: TextStyles.textSmRegular
                                    .copyWith(color: Pallet.white),
                              ),
                            ],
                          ),
                        ],
                      )
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
