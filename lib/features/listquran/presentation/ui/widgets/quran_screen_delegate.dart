import 'package:al_quran_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../data/models/list_ayat.dart';

class QuranSearchDelegate extends SearchDelegate {
  final List<ListAyat> allAyat;

  QuranSearchDelegate(this.allAyat);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = _search(query);

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final ayat = results[index];
        return _buildAyatCard(context, ayat);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = _search(query);

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final ayat = suggestions[index];
        return _buildAyatCard(context, ayat);
      },
    );
  }

  List<ListAyat> _search(String query) {
    if (query.isEmpty) {
      return [];
    }

    final lowerQuery = query.toLowerCase();
    return allAyat.where((ayat) {
      final matchesNama = ayat.nama.toLowerCase().contains(lowerQuery);
      final matchesNamaLatin =
          ayat.namaLatin.toLowerCase().contains(lowerQuery);
      final matchesArti = ayat.arti.toLowerCase().contains(lowerQuery);

      return matchesNama || matchesNamaLatin || matchesArti;
    }).toList();
  }

  Widget _buildAyatCard(BuildContext context, ListAyat ayat) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Theme.of(context).container2,
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).boxFeatures,
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
