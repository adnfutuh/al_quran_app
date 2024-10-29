// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayerTimeModelImpl _$$PrayerTimeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrayerTimeModelImpl(
      fajr: json['fajr'] as String,
      dhuhr: json['dhuhr'] as String,
      asr: json['asr'] as String,
      maghrib: json['maghrib'] as String,
      isha: json['isha'] as String,
    );

Map<String, dynamic> _$$PrayerTimeModelImplToJson(
        _$PrayerTimeModelImpl instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
    };
