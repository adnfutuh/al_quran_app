import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/listquran/presentation/cubit/listquran_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/list_ayat.dart';

class ListQuranScreen extends StatefulWidget {
  const ListQuranScreen({super.key});

  @override
  State<ListQuranScreen> createState() => _ListQuranScreenState();
}

class _ListQuranScreenState extends State<ListQuranScreen> {
  @override
  void initState() {
    super.initState();
    // Memanggil getListQuranData hanya jika Cubit tidak ditutup
    final listquranCubit = GetIt.I<ListquranCubit>();
    if (!listquranCubit.isClosed) {
      listquranCubit.getListQuranData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<ListquranCubit, ListquranState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (listQuran) => _buildQuranList(listQuran),
                error: (error) => Center(
                  child: Text('Kesalahan: ${error.message}'),
                ),
                orElse: () => const Center(child: Text('Tidak ada data')),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildQuranList(List<ListAyat> listQuran) {
    return ListView.builder(
      itemCount: listQuran.length,
      itemBuilder: (context, index) {
        final ayat = listQuran[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          elevation: 4,
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: CircleAvatar(
              backgroundColor: Pallet.cyan,
              child: Text(
                '${ayat.nomor}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ayat.namaLatin, style: TextStyles.textSmDefault),
                      Text(
                        ayat.arti,
                        style: TextStyles.textSmDefault
                            .copyWith(color: Pallet.grey),
                      ),
                    ],
                  ),
                ),
                Text(
                  ayat.nama,
                  style: TextStyles.textLgDefault
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onTap: () {
              context.go('/quran/${ayat.nomor}');
            },
          ),
        );
      },
    );
  }
}