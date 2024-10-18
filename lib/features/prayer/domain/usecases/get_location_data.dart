import 'package:al_quran_app/core/services/geolocation/geolocation_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:al_quran_app/core/core.dart';
import '../../../../core/services/geolocation/city_detail.dart';

@lazySingleton
class GetLocationData {
  final GeolocationService geoService;
  GetLocationData({required this.geoService});
  Future<Either<AppException, CityDetail>> call() async {
    try {
      final currentPosition = await geoService.getCurrentPosition();
      final result = await geoService.getCityDetails(currentPosition);

      return Right(result);
    } on AppException catch (ex) {
      return Left(ex);
    }
  }
}
