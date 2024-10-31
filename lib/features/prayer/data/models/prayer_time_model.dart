import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_time_model.freezed.dart';
part 'prayer_time_model.g.dart';

/// Model utama untuk menguraikan respons dari API waktu sholat.
@freezed
class PrayerTimeModel with _$PrayerTimeModel {
  const factory PrayerTimeModel({
    required int code, // Kode status dari API
    required String status, // Status respons (misalnya, "OK")
    required PrayerData
        data, // Data yang berisi informasi waktu sholat dan lainnya
  }) = _PrayerTimeModel;

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimeModelFromJson(json);
}

/// Model untuk data yang berisi waktu sholat, tanggal, dan informasi tambahan.
@freezed
class PrayerData with _$PrayerData {
  const factory PrayerData({
    required Timings timings, // Model untuk waktu sholat
    required DateInfo date, // Model untuk informasi tanggal
    required Meta meta, // Model untuk informasi meta
  }) = _PrayerData;

  factory PrayerData.fromJson(Map<String, dynamic> json) =>
      _$PrayerDataFromJson(json);
}

/// Model untuk waktu sholat.
@freezed
class Timings with _$Timings {
  const factory Timings({
    required String Fajr, // Waktu Fajr
    required String Sunrise, // Waktu Sunrise
    required String Dhuhr, // Waktu Dhuhr
    required String Asr, // Waktu Asr
    required String Sunset,
    required String Maghrib, // Waktu Maghrib
    required String Isha, // Waktu Isha
    required String Imsak, // Waktu Imsak
    required String Firstthird,
    required String Lastthird,
    required String Midnight, // Waktu Tengah Malam
  }) = _Timings;

  factory Timings.fromJson(Map<String, dynamic> json) =>
      _$TimingsFromJson(json);
}

/// Model untuk informasi tanggal.
@freezed
class DateInfo with _$DateInfo {
  const factory DateInfo({
    required String readable, // Tanggal dalam format yang mudah dibaca
    required String timestamp, // Tanggal dalam format timestamp
    required Gregorian gregorian, // Model untuk tanggal Gregorian
    required Hijri hijri, // Model untuk tanggal Hijri
  }) = _DateInfo;

  factory DateInfo.fromJson(Map<String, dynamic> json) =>
      _$DateInfoFromJson(json);
}

/// Model untuk informasi tanggal dalam kalender Gregorian.
@freezed
class Gregorian with _$Gregorian {
  const factory Gregorian({
    required String date, // Tanggal dalam format DD-MM-YYYY
    required String format, // Format tanggal
    required String day, // Hari
    required Weekday weekday, // Model untuk informasi hari dalam seminggu
    required Month month, // Model untuk informasi bulan
    required String year, // Tahun
    required Designation designation, // Model untuk penunjukan tahun (AD/AH)
  }) = _Gregorian;

  factory Gregorian.fromJson(Map<String, dynamic> json) =>
      _$GregorianFromJson(json);
}

/// Model untuk informasi tanggal dalam kalender Hijri.
@freezed
class Hijri with _$Hijri {
  const factory Hijri({
    required String date, // Tanggal dalam format DD-MM-YYYY
    required String format, // Format tanggal
    required String day, // Hari
    required Weekday weekday, // Model untuk informasi hari dalam seminggu
    required Month month, // Model untuk informasi bulan
    required String year, // Tahun
    required Designation designation, // Model untuk penunjukan tahun (AD/AH)
    required List<String> holidays, // Daftar hari libur
  }) = _Hijri;

  factory Hijri.fromJson(Map<String, dynamic> json) => _$HijriFromJson(json);
}

/// Model untuk informasi hari dalam seminggu.
@freezed
class Weekday with _$Weekday {
  const factory Weekday({
    required String en, // Nama hari dalam bahasa Inggris
    String? ar, // Nama hari dalam bahasa Arab (opsional)
  }) = _Weekday;

  factory Weekday.fromJson(Map<String, dynamic> json) =>
      _$WeekdayFromJson(json);
}

/// Model untuk informasi bulan.
@freezed
class Month with _$Month {
  const factory Month({
    required int number, // Nomor bulan (1-12)
    required String en, // Nama bulan dalam bahasa Inggris
    String? ar, // Nama bulan dalam bahasa Arab (opsional)
  }) = _Month;

  factory Month.fromJson(Map<String, dynamic> json) => _$MonthFromJson(json);
}

/// Model untuk penunjukan tahun (AD/AH).
@freezed
class Designation with _$Designation {
  const factory Designation({
    required String abbreviated, // Penunjukan singkat (misalnya, "AD")
    required String expanded, // Penunjukan lengkap (misalnya, "Anno Domini")
  }) = _Designation;

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);
}

/// Model untuk informasi meta.
@freezed
class Meta with _$Meta {
  const factory Meta({
    required double latitude, // Latitude lokasi
    required double longitude, // Longitude lokasi
    required String timezone, // Zona waktu
    required Method method, // Model untuk metode perhitungan waktu sholat
    required String latitudeAdjustmentMethod, // Metode penyesuaian latitude
    required String midnightMode, // Mode tengah malam
    required String school, // Sekolah (metode) yang digunakan
    required Map<String, dynamic> offset, // Model untuk offset waktu sholat
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

/// Model untuk metode perhitungan waktu sholat.
@freezed
class Method with _$Method {
  const factory Method({
    required int id, // ID metode
    required String name, // Nama metode
    required Map<String, dynamic> params, // Parameter untuk metode
    required Map<String, dynamic> location,
  }) = _Method;

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);
}
