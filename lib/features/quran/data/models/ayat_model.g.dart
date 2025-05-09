// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyatModelImpl _$$AyatModelImplFromJson(Map<String, dynamic> json) =>
    _$AyatModelImpl(
      id: (json['id'] as num).toInt(),
      surah: (json['surah'] as num).toInt(),
      nomor: (json['nomor'] as num).toInt(),
      ar: json['ar'] as String,
      tr: json['tr'] as String,
      idn: json['idn'] as String,
    );

Map<String, dynamic> _$$AyatModelImplToJson(_$AyatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surah': instance.surah,
      'nomor': instance.nomor,
      'ar': instance.ar,
      'tr': instance.tr,
      'idn': instance.idn,
    };
