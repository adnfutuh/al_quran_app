import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../../core/core.dart';
import '../../cubit/prayer_cubit.dart';

class PrayerDetailScreen extends StatefulWidget {
  final int id;
  const PrayerDetailScreen({super.key, required this.id});

  @override
  State<PrayerDetailScreen> createState() => _PrayerDetailScreenState();
}

class _PrayerDetailScreenState extends State<PrayerDetailScreen> {
  @override
  void initState() {
    super.initState();
    GetIt.I<PrayerCubit>().fetchPrayerDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerCubit, PrayerState>(
      builder: (context, state) {
        return state.maybeWhen(
          successDetail: (prayerDetail) {
            // Gunakan prayerDetail (satu item)
            return Scaffold(
              backgroundColor: Theme.of(context).bgScaffold,
              appBar: AppBar(
                backgroundColor: Theme.of(context).bgScaffold4,
                leading: IconButton(
                  onPressed: () => context.go('/navbar/prayer'),
                  icon: const Icon(CupertinoIcons.back, color: Pallet.white),
                ),
                title: Center(
                  child: Text(
                    prayerDetail.judul,
                    style: const TextStyle(color: Pallet.white),
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.search,
                      color: Pallet.white,
                    ),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 130,
                      decoration: Theme.of(context).container4,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'بسم الله الرحمن الرحيم',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Amiri',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Dengan nama Allah Yang Maha Pengasih, Maha Penyayang.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Amiri',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      color: Theme.of(context).container3,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: ListTile(
                          title: Text(
                            prayerDetail.arab,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontFamily: 'Amiri',
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              HtmlWidget(
                                prayerDetail.latin,
                                textStyle: TextStyle(
                                    color: Theme.of(context).boxFeatures),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                prayerDetail.terjemah,
                                style: TextStyle(
                                    color: Theme.of(context).textAyatIdn),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          loading: () => const Scaffold(
            backgroundColor: Pallet.white,
            body: Center(child: CircularProgressIndicator()),
          ),
          error: (error) => Center(
            child: Text('Kesalahan: ${error.message}'),
          ),
          orElse: () => const Center(child: Text('Tidak ada data')),
        );
      },
    );
  }
}
