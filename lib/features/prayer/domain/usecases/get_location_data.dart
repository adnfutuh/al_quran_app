import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/core.dart';
import '../../../../core/services/geolocation/geolocation_service.dart';
import '../../data/datasources/prayer_time_datasources.dart';
import '../../data/models/prayer_time_model.dart';

@lazySingleton
class GetPrayerTimeBasedOnLocation {
  final GeolocationService geoService;
  final PrayerTimeDatasources prayerTimeDatasources;

  GetPrayerTimeBasedOnLocation({
    required this.geoService,
    required this.prayerTimeDatasources,
  });

  Future<Either<AppException, PrayerTimeModel>> call() async {
    try {
      // Mengambil posisi saat ini
      final position = await geoService.getCurrentPosition();
      // Mendapatkan detail kota
      final cityDetail = await geoService.getCityDetails(position);

      // Mengambil waktu sholat dari datasource
      final result =
          await prayerTimeDatasources.getPrayerTime(cityDetail: cityDetail);

      return Right(result);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(DefaultAppException(message: e.toString()));
    }
  }
}
