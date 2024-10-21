// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_ayat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAyatImpl _$$ListAyatImplFromJson(Map<String, dynamic> json) =>
    _$ListAyatImpl(
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      namaLatin: json['nama_latin'] as String,
      jumlahAyat: (json['jumlah_ayat'] as num).toInt(),
      tempatTurun: json['tempat_turun'] as String,
      arti: json['arti'] as String,
      deskripsi: json['deskripsi'] as String,
      audio: json['audio'] as String,
    );

Map<String, dynamic> _$$ListAyatImplToJson(_$ListAyatImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'nama_latin': instance.namaLatin,
      'jumlah_ayat': instance.jumlahAyat,
      'tempat_turun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audio': instance.audio,
    };
