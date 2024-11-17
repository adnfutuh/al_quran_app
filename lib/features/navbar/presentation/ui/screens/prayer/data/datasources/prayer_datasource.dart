import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/data/models/prayer_model.dart';
import 'package:injectable/injectable.dart';

abstract class PrayerDatasource {
  Future<List<PrayerModel>> getPrayerList();
  Future<PrayerModel> getPrayerDetail({required int id});
}

@LazySingleton(as: PrayerDatasource)
class PrayerDatasourceImpl implements PrayerDatasource {
  final HttpClientService httpClientService;

  PrayerDatasourceImpl({@Named('base') required this.httpClientService});

  @override
  Future<List<PrayerModel>> getPrayerList() async {
    try {
      final response =
          await httpClientService.get(path: 'https://open-api.my.id/api/doa');

      final List<dynamic> data = response.data;
      return data.map((json) => PrayerModel.fromJson(json)).toList();
    } catch (e) {
      throw ServerException(error: e.toString(), message: e.toString());
    }
  }

  @override
  Future<PrayerModel> getPrayerDetail({required int id}) async {
    try {
      final response = await httpClientService.get(
          path: 'https://open-api.my.id/api/doa/$id');

      return PrayerModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(error: e.toString(), message: e.toString());
    }
  }
}
