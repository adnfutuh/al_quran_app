import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/listquran/data/models/list_ayat.dart';
import 'package:injectable/injectable.dart';

abstract class ListQuranRemoteDatasources {
  Future<List<ListAyat>> getListQuran(); // Ubah tipe kembalian di sini
}

@LazySingleton(as: ListQuranRemoteDatasources)
class ListQuranRemoteDatasourcesImpl implements ListQuranRemoteDatasources {
  final HttpClientService httpClientService;

  ListQuranRemoteDatasourcesImpl(
      {@Named('base') required this.httpClientService});

  @override
  Future<List<ListAyat>> getListQuran() async {
    try {
      final response = await httpClientService.get(
          path: 'https://quran-api.santrikoding.com/api/surah');

      // Mengurai data JSON menjadi List<ListAyat>
      final List<dynamic> data = response.data;
      return data
          .map((json) => ListAyat.fromJson(json))
          .toList(); // Mengembalikan List<ListAyat>
    } catch (e) {
      throw ServerException(error: e.toString(), message: e.toString());
    }
  }
}
