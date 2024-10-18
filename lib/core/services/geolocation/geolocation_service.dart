import 'dart:async';

import 'package:al_quran_app/core/core.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import 'city_detail_object.dart';

@LazySingleton(as: GeolocationService)
class GeolocationServiceImpl implements GeolocationService {
  @override
  Future<Position> getCurrentPosition() async {
    try {
      LocationSettings locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10, // dalam meter, bisa disesuaikan
      );

      return await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );
    } on TimeoutException catch (e) {
      throw DefaultAppException(
        message: 'TimeoutException: ${e.message}',
      );
    } catch (_) {
      throw const DefaultAppException();
    }
  }

  @override
  Future<CityDetail> getCityDetails(Position position) async {
    try {
      final List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      // Memastikan ada placemarks
      if (placemarks.isEmpty) {
        throw const DefaultAppException(message: 'No placemarks found');
      }

      // Ambil placemark pertama
      final Placemark place = placemarks[0];

      return CityDetail(
        subAdministrativeArea: place.subAdministrativeArea ?? "-",
        locality: place.locality ?? "-",
      );
    } on TimeoutException catch (e) {
      throw DefaultAppException(
        message: 'TimeoutException: ${e.message}',
      );
    } catch (e) {
      // Menangkap semua kesalahan lain yang tidak ditangani sebelumnya
      throw DefaultAppException(message: e.toString());
    }
  }
}

abstract class GeolocationService {
  Future<Position> getCurrentPosition();
  Future<CityDetail> getCityDetails(Position position);
}
