import 'package:al_quran_app/features/listquran/presentation/cubit/listquran_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ListQuranScreen extends StatefulWidget {
  const ListQuranScreen({super.key});

  @override
  State<ListQuranScreen> createState() => _ListQuranScreenState();
}

class _ListQuranScreenState extends State<ListQuranScreen> {
  @override
  void initState() {
    super.initState();
    GetIt.I<ListquranCubit>().getListQuranData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Daftar Quran',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: BlocBuilder<ListquranCubit, ListquranState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (listQuran) {
                  return ListView.builder(
                    itemCount: listQuran.length,
                    itemBuilder: (context, index) {
                      final ayat = listQuran[index];
                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 16),
                        title: Text('Surah ${ayat.nomor}: ${ayat.nama}'),
                        onTap: () {
                          context.go('/quran/${ayat.nomor}');
                        },
                      );
                    },
                  );
                },
                error: (error) =>
                    Center(child: Text('Error: ${error.message}')),
                orElse: () => const Center(child: Text('Kosong')),
              );
            },
          ),
        ),
      ],
    );
  }
}
