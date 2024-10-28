// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_ayat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NextAyatModelImpl _$$NextAyatModelImplFromJson(Map<String, dynamic> json) =>
    _$NextAyatModelImpl(
      id: (json['id'] as num?)?.toInt(),
      number: (json['nomor'] as num?)?.toInt(),
      name: json['nama'] as String?,
      latinName: json['nama_latin'] as String?,
      verseCount: (json['jumlah_ayat'] as num?)?.toInt(),
      placeOfDescent: json['tempat_turun'] as String?,
      meaning: json['arti'] as String?,
      description: json['deskripsi'] as String?,
      audio: json['audio'] as String?,
    );

Map<String, dynamic> _$$NextAyatModelImplToJson(_$NextAyatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomor': instance.number,
      'nama': instance.name,
      'nama_latin': instance.latinName,
      'jumlah_ayat': instance.verseCount,
      'tempat_turun': instance.placeOfDescent,
      'arti': instance.meaning,
      'deskripsi': instance.description,
      'audio': instance.audio,
    };
