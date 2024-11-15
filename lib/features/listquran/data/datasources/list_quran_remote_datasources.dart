import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/listquran/data/models/list_ayat.dart';
import 'package:injectable/injectable.dart';

abstract class ListQuranRemoteDatasources {
  Future<List<ListAyat>> getListQuran();
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

      final List<dynamic> data = response.data;
      return data.map((json) => ListAyat.fromJson(json)).toList();
    } catch (e) {
      throw ServerException(error: e.toString(), message: e.toString());
    }
  }
}
