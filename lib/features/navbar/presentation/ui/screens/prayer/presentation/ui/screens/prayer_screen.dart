import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/presentation/cubit/prayer_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../../core/core.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({super.key});

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  @override
  void initState() {
    super.initState();
    GetIt.I<PrayerCubit>().fetchPrayerList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerCubit, PrayerState>(
      builder: (context, state) {
        return state.maybeWhen(
          successList: (prayerList) {
            return Scaffold(
              backgroundColor: Theme.of(context).bgScaffold,
              appBar: AppBar(
                  backgroundColor: Theme.of(context).bgScaffold4,
                  leading: const Icon(CupertinoIcons.bars, color: Pallet.white),
                  title: const Center(
                    child: Text('Do\'a', style: TextStyle(color: Pallet.white)),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.search,
                            color: Pallet.white))
                  ]),
              body: ListView.builder(
                itemCount: prayerList.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    color: Theme.of(context).container2,
                    elevation: 4,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      leading: SizedBox(
                        height: 30,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/star.png',
                              fit: BoxFit.cover,
                              color: Theme.of(context).boxFeatures,
                            ),
                            Text(
                              '${prayerList[index].id}',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      title: Text(
                        prayerList[index].judul,
                        style: TextStyles.textSmDefault
                            .copyWith(color: Theme.of(context).textBoxFeatures),
                      ),
                      onTap: () {
                        context.go('/prayer/${prayerList[index].id}');
                      },
                    ),
                  );
                },
              ),
            );
          },
          loading: () => const Scaffold(
              backgroundColor: Pallet.white,
              body: Center(child: CircularProgressIndicator())),
          error: (error) => Center(
            child: Text('Kesalahan: ${error.message}'),
          ),
          orElse: () => const Center(child: Text('Tidak ada data')),
        );
      },
    );
  }
}
