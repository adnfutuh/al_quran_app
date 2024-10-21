// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_ayat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAyatImpl _$$ListAyatImplFromJson(Map<String, dynamic> json) =>
    _$ListAyatImpl(
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      namaLatin: json['namaLatin'] as String,
      jumlahAyat: (json['jumlahAyat'] as num).toInt(),
      tempatTurun: json['tempatTurun'] as String,
      arti: json['arti'] as String,
      deskripsi: json['deskripsi'] as String,
      audio: json['audio'] as String,
    );

Map<String, dynamic> _$$ListAyatImplToJson(_$ListAyatImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audio': instance.audio,
    };
