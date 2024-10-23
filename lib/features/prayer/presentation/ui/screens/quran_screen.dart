import 'dart:developer';

import 'package:al_quran_app/features/quran/presentation/cubit/quran_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

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
    GetIt.I<QuranCubit>().getQuranData(widget.surahId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Quran'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/navbar');
          },
        ),
      ),
      body: BlocProvider.value(
        value: GetIt.I<QuranCubit>(),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<QuranCubit, QuranState>(
                builder: (context, state) {
                  log(state.runtimeType.toString());
                  log(state.toString());
                  return state.maybeWhen(
                    success: (surahModel) => ListView.builder(
                      itemCount: surahModel.jumlahAyat,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(surahModel.ayat[index].ar),
                          subtitle: Text(surahModel.ayat[index].idn),
                        );
                      },
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error) =>
                        Center(child: Text('Error: ${error.message}')),
                    orElse: () => const Center(
                      child: Text("Kosong"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
