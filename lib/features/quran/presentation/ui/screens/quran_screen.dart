import 'dart:developer';
import 'package:al_quran_app/features/quran/data/models/ayat_model.dart';
import 'package:al_quran_app/features/quran/presentation/cubit/quran_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../../../../../core/core.dart';
import '../../../../audio/presentation/ui/widgets/audio_play.dart';

import '../../../data/models/surah_model.dart';

class QuranScreen extends StatefulWidget {
  final int surahId;

  const QuranScreen({super.key, required this.surahId});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  bool _isDataFetched = false;

  @override
  void initState() {
    super.initState();

    final quranCubit = GetIt.I<QuranCubit>();

    if (!quranCubit.isClosed && !_isDataFetched) {
      quranCubit.getQuranData(widget.surahId);
      _isDataFetched = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranState>(builder: (context, state) {
      log(state.runtimeType.toString());
      log(state.toString());

      return state.maybeWhen(
        success: (surahModel) => Scaffold(
          backgroundColor: Theme.of(context).bgScaffold,
          appBar: AppBar(
            backgroundColor: Theme.of(context).bgScaffold,
            title: Text(
              surahModel.nama,
              style: const TextStyle(
                fontFamily: 'Amiri',
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go('/listQuran'),
              //replace
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(14.0),
            child: ListView.builder(
              itemCount: surahModel.jumlahAyat + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _buildSurahInfoCard(surahModel);
                } else {
                  return _buildAyatTile(surahModel.ayat[index - 1], index);
                }
              },
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error) => _buildErrorView(error),
        orElse: () => const Center(child: Text("Tidak ada data tersedia")),
      );
    });
  }

  Widget _buildSurahInfoCard(SurahModel surahModel) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      color: Theme.of(context).container3,
      elevation: 2,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${surahModel.namaLatin} - ${surahModel.nama}',
                  style: const TextStyle(
                      fontFamily: 'Amiri',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 10,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(Icons.list),
                        const SizedBox(width: 5),
                        Text('Jumlah Ayat: ${surahModel.jumlahAyat}'),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(width: 5),
                        Text('Tempat Turun: ${surahModel.tempatTurun}'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                AudioPlayerUI(
                  surahModel: surahModel,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color text = const Color(0xFFA19CC5);

  Widget _buildAyatTile(AyatModel ayat, int nomorAyat) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      color: Theme.of(context).container3,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: ListTile(
          title: Text(
            ayat.ar,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontFamily: 'Amiri',
              fontSize: 20,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              HtmlWidget(
                ayat.tr,
                textStyle: TextStyle(color: Theme.of(context).boxFeatures),
              ),
              const SizedBox(height: 3),
              Text(
                ayat.idn,
                style: TextStyle(color: Theme.of(context).textAyatIdn),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildErrorView(AppException error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Kesalahan: ${error.message}'),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              final quranCubit = GetIt.I<QuranCubit>();
              if (!quranCubit.isClosed) {
                quranCubit.getQuranData(widget.surahId);
              }
            },
            child: const Text('Coba Lagi'),
          ),
        ],
      ),
    );
  }
}
