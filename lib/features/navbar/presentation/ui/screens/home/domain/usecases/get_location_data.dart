import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../../../core/core.dart';
import '../../../../../../../../core/services/geolocation/city_detail.dart';
import '../../../../../../../../core/services/geolocation/geolocation_service.dart';

@lazySingleton
class GetLocationData {
  final GeolocationService geoService;

  GetLocationData({required this.geoService});

  Future<Either<AppException, CityDetail>> call() async {
    try {
      // Mengambil posisi saat ini
      final currentPosition = await geoService.getCurrentPosition();

      // Mengambil detail kota berdasarkan posisi
      final result = await geoService.getCityDetails(currentPosition);

      // Mengembalikan hasil yang berhasil
      return Right(result);
    } on AppException catch (ex) {
      // Mengembalikan kesalahan jika terjadi masalah
      return Left(ex);
    } catch (e) {
      // Tangani kesalahan lain yang mungkin terjadi
      return Left(
          DefaultAppException(message: 'Unexpected error: ${e.toString()}'));
    }
  }
}
