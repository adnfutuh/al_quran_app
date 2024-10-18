import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/quran/data/models/surah_model.dart';

import 'package:injectable/injectable.dart';

abstract class QuranRemoteDatasources {
  Future<SurahModel> getQuran({required String id});
}

@LazySingleton(as: QuranRemoteDatasources)
class QuranRemoteDatasourcesImpl implements QuranRemoteDatasources {
  final HttpClientService httpClientService;
  QuranRemoteDatasourcesImpl({@Named('base') required this.httpClientService});
  @override
  Future<SurahModel> getQuran({required String id}) async {
    try {
      final response = await httpClientService.get(
          path: 'https://quran-api.santrikoding.com/api/surah/$id');
      return SurahModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(error: e.toString(), message: e.toString());
    }
  }
}
