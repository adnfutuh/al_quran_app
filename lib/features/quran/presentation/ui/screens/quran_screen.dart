import 'dart:developer';
import 'package:al_quran_app/features/quran/presentation/cubit/quran_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../../core/core.dart';

class QuranScreen extends StatefulWidget {
  final int surahId;

  const QuranScreen({super.key, required this.surahId});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  @override
  void initState() {
    super.initState();
    final quranCubit = GetIt.I<QuranCubit>();
    if (!quranCubit.isClosed) {
      quranCubit.getQuranData(widget.surahId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.I<QuranCubit>(),
      child: BlocBuilder<QuranCubit, QuranState>(
        builder: (context, state) {
          log(state.runtimeType.toString());
          log(state.toString());
          return Scaffold(
            appBar: AppBar(
              title: state.maybeWhen(
                success: (surahModel) => Text(surahModel.nama),
                orElse: () => const Text(''),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.go('/listQuran');
                },
              ),
            ),
            body: state.maybeWhen(
              success: (surahModel) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: surahModel.jumlahAyat,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              surahModel.ayat[index].ar,
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 20),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HtmlWidget(
                                  surahModel.ayat[index].tr, // Render HTML
                                  textStyle: const TextStyle(
                                    color: Pallet.cyan,
                                  ),
                                ),
                                Text(surahModel.ayat[index].idn),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error) => Center(
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
              ),
              orElse: () => const Center(
                child: Text("Tidak ada data tersedia"),
              ),
            ),
          );
        },
      ),
    );
  }
}
