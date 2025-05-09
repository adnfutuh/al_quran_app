import 'dart:async';
import 'package:al_quran_app/core/core.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:injectable/injectable.dart';
import 'city_detail.dart';

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
    } catch (e) {
      throw DefaultAppException(
          message: 'Error retrieving location: ${e.toString()}');
    }
  }

  @override
  Future<CityDetail> getCityDetails(Position position) async {
    try {
      final List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isEmpty) {
        throw const DefaultAppException(message: 'No placemarks found');
      }

      final Placemark place = placemarks[0];
      final String subAdministrativeArea =
          place.subAdministrativeArea ?? "Unknown Area";
      final String locality = place.locality ?? "Unknown Location";
      final String country = place.country ?? "Unknown Country";

      if (locality.isEmpty) {
        throw const DefaultAppException(message: 'Locality is empty');
      }

      final now = DateTime.now();

      final hijriDate = HijriCalendar.fromDate(now);
      final hijriDay = hijriDate.hDay;
      final hijriMonth = hijriDate.longMonthName;
      final hijriYear = hijriDate.hYear;

      return CityDetail(
        subAdministrativeArea: subAdministrativeArea,
        locality: locality,
        country: country,
        date: hijriDay.toString(),
        month: hijriMonth,
        year: '$hijriYear H',
      );
    } on TimeoutException catch (e) {
      throw DefaultAppException(
        message: 'TimeoutException: ${e.message}',
      );
    } catch (e) {
      throw DefaultAppException(
          message: 'Error retrieving city details: ${e.toString()}');
    }
  }
}

abstract class GeolocationService {
  Future<Position> getCurrentPosition();
  Future<CityDetail> getCityDetails(Position position);
}
