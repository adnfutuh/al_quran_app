import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/quran/data/models/surah_model.dart';
import 'package:injectable/injectable.dart';

abstract class QuranRemoteDatasource {
  Future<SurahModel> getQuran({required int id});
}

@LazySingleton(as: QuranRemoteDatasource)
class QuranRemoteDatasourceImpl implements QuranRemoteDatasource {
  final HttpClientService httpClientService;

  QuranRemoteDatasourceImpl({@Named('base') required this.httpClientService});

  @override
  Future<SurahModel> getQuran({required int id}) async {
    try {
      final response = await httpClientService.get(
        path: 'https://quran-api.santrikoding.com/api/surah/$id',
      );
      return SurahModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(error: e, message: e.toString());
    }
  }
}
