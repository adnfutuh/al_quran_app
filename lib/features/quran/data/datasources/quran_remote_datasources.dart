import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/quran/data/models/surah_model.dart';

import 'package:injectable/injectable.dart';

abstract class QuranRemoteDatasources {
  Future<SurahModel> getQuran({required int id});
}

@LazySingleton(as: QuranRemoteDatasources)
class QuranRemoteDatasourcesImpl implements QuranRemoteDatasources {
  final HttpClientService httpClientService;
  QuranRemoteDatasourcesImpl({required this.httpClientService});
  @override
  Future<SurahModel> getQuran({required int id}) async {
    try {
      final response = await httpClientService.get(
          path: 'https://quran-api.santrikoding.com/api/surah/$id');
      return SurahModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}