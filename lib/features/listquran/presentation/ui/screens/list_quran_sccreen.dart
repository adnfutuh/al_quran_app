import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/listquran/presentation/cubit/listquran_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/list_ayat.dart';
import '../widgets/quran_screen_delegate.dart';

class ListQuranScreen extends StatefulWidget {
  const ListQuranScreen({super.key});

  @override
  State<ListQuranScreen> createState() => _ListQuranScreenState();
}

class _ListQuranScreenState extends State<ListQuranScreen> {
  @override
  void initState() {
    super.initState();
    final listquranCubit = GetIt.I<ListquranCubit>();
    if (!listquranCubit.isClosed) {
      listquranCubit.state.maybeWhen(
        success: (listAyat) {},
        orElse: () {
          listquranCubit.getListQuranData();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListquranCubit, ListquranState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (listAyat) => Scaffold(
            backgroundColor: Theme.of(context).bgScaffold,
            appBar: appbar_listquran(context, listAyat),
            body: _buildQuranList(listAyat),
          ),
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

  AppBar appbar_listquran(BuildContext context, List<ListAyat> listAyat) {
    return AppBar(
      backgroundColor: Theme.of(context).bgScaffold4,
      leading: IconButton(
        onPressed: () {
          context.go('/navbar/home');
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Pallet.white,
        ),
      ),
      title: Center(
        child: Text(
          'Quran',
          style: TextStyles.textMdDefault.copyWith(color: Pallet.white),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (listAyat.isNotEmpty) {
              showSearch(
                context: context,
                delegate: QuranSearchDelegate(listAyat),
              );
            }
          },
          icon: const Icon(
            Icons.search,
            color: Pallet.white,
          ),
        ),
      ],
    );
  }

  Widget _buildQuranList(List<ListAyat> listQuran) {
    return ListView.builder(
      itemCount: listQuran.length,
      itemBuilder: (context, index) {
        return _buildAyatCard(listQuran[index]);
      },
    );
  }

  Widget _buildAyatCard(ListAyat ayat) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Theme.of(context).container2,
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: SizedBox(
          height: 40,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/star.png',
                fit: BoxFit.cover,
                color: Theme.of(context).boxFeatures,
              ),
              Text(
                '${ayat.nomor}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ayat.namaLatin,
                      style: TextStyles.textSmDefault
                          .copyWith(color: Theme.of(context).textBoxFeatures)),
                  Text(
                    ayat.arti,
                    style:
                        TextStyles.textSmDefault.copyWith(color: Pallet.grey),
                  ),
                ],
              ),
            ),
            Text(
              ayat.nama,
              style: TextStyles.textLgDefault.copyWith(
                fontFamily: 'Amiri',
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textListQuran,
              ),
            ),
          ],
        ),
        onTap: () {
          context.go('/quran/${ayat.nomor}');
        },
      ),
    );
  }
}
