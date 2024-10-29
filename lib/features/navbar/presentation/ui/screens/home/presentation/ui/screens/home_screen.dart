import 'package:al_quran_app/features/listquran/presentation/ui/screens/list_quran_sccreen.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/home/presentation/cubit/location_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../../../core/core.dart';
import '../../../../../../../../listquran/presentation/cubit/listquran_cubit.dart';
import '../../../../../../../../prayer/presentation/ui/widgets/prayer_time_widget.dart';
import '../widgets/home_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.I<ListquranCubit>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I<LocationCubit>()..fetchLocation(),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Pallet.whiteScaffold,
          body: const Column(
            children: [
              HomeHeaderWidget(),
              // PrayerTimeWidget(),
              Expanded(child: ListQuranScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
