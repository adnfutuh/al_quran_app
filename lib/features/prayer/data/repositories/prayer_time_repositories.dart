import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/prayer/data/datasources/prayer_time_datasources.dart';
import 'package:al_quran_app/features/prayer/data/models/prayer_time_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/geolocation/geolocation_service.dart';

abstract class PrayerTimeRepositories {
  Future<Either<AppException, PrayerTimeModel>> getPrayerTime();
}

@LazySingleton(as: PrayerTimeRepositories)
class PrayerTimeRepositoriesImpl implements PrayerTimeRepositories {
  final PrayerTimeDatasources prayerTimeDatasources;
  final GeolocationService geoService;

  PrayerTimeRepositoriesImpl({
    required this.prayerTimeDatasources,
    required this.geoService,
  });

  @override
  Future<Either<AppException, PrayerTimeModel>> getPrayerTime() async {
    try {
      // Mengambil posisi saat ini
      final position = await geoService.getCurrentPosition();
      // Mendapatkan detail kota
      final cityDetail = await geoService.getCityDetails(position);

      // Mengambil waktu sholat dari datasource
      final result =
          await prayerTimeDatasources.getPrayerTime(cityDetail: cityDetail);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerException(code: e.code, message: e.message));
    } on InternetConnectionException catch (e) {
      return Left(
          InternetConnectionException(code: e.code, message: e.message));
    } on DefaultAppException catch (e) {
      return Left(DefaultAppException(code: e.code, message: e.message));
    }
  }
}
