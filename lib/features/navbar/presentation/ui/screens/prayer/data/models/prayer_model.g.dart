// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayerModelImpl _$$PrayerModelImplFromJson(Map<String, dynamic> json) =>
    _$PrayerModelImpl(
      id: (json['id'] as num).toInt(),
      judul: json['judul'] as String,
      latin: json['latin'] as String,
      arab: json['arab'] as String,
      terjemah: json['terjemah'] as String,
    );

Map<String, dynamic> _$$PrayerModelImplToJson(_$PrayerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'judul': instance.judul,
      'latin': instance.latin,
      'arab': instance.arab,
      'terjemah': instance.terjemah,
    };
