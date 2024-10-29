import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/core/services/geolocation/city_detail.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/geolocation/geolocation_service.dart';
import '../models/prayer_time_model.dart';

abstract class PrayerTimeDatasources {
  Future<PrayerTimeModel> getPrayerTime({required CityDetail cityDetail});
}

@LazySingleton(as: PrayerTimeDatasources)
class PrayerTimeDatasourcesImpl implements PrayerTimeDatasources {
  final HttpClientService httpClientService;
  final GeolocationService geoService;

  PrayerTimeDatasourcesImpl({
    @Named('base') required this.httpClientService,
    required this.geoService,
  });

  @override
  Future<PrayerTimeModel> getPrayerTime(
      {required CityDetail cityDetail}) async {
    try {
      // Mendapatkan posisi saat ini
      final position = await geoService.getCurrentPosition();

      // Mengambil latitude dan longitude dari posisi
      final latitude = position.latitude;
      final longitude = position.longitude;

      final response = await httpClientService.get(
        path:
            'https://api.aladhan.com/v1/timings?latitude=$latitude&longitude=$longitude',
      );
      return PrayerTimeModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(error: e, message: e.toString());
    }
  }
}
