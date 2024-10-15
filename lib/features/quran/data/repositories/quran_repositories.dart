import 'package:al_quran_app/features/quran/data/datasources/quran_remote_datasources.dart';
import 'package:al_quran_app/features/quran/data/models/surah_model.dart';

abstract class QuranRepositories {
  Future<SurahModel> getQuran({required int id});
}

class QuranRepositoriesImpl implements QuranRepositories {
  final QuranRemoteDatasources quranRemoteDatasources;

  QuranRepositoriesImpl({required this.quranRemoteDatasources});
  @override
  Future<SurahModel> getQuran({required int id}) async {
    return await quranRemoteDatasources.getQuran(id: id);
  }
}
