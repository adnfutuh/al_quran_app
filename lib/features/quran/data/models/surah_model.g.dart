// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahModelImpl _$$SurahModelImplFromJson(Map<String, dynamic> json) =>
    _$SurahModelImpl(
      status: json['status'] as bool,
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      jumlahAyat: (json['jumlah_ayat'] as num).toInt(),
      namaLatin: json['nama_latin'] as String,
      arti: json['arti'] as String,
      tempatTurun: json['tempat_turun'] as String,
      deskripsi: json['deskripsi'] as String,
      audio: json['audio'] as String,
      ayat: (json['ayat'] as List<dynamic>)
          .map((e) => AyatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextAyatModel: NextAyatModel.fromJson(
          json['surat_selanjutnya'] as Map<String, dynamic>),
      suratSebelumnya: json['surat_sebelumnya'],
    );

Map<String, dynamic> _$$SurahModelImplToJson(_$SurahModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'nomor': instance.nomor,
      'nama': instance.nama,
      'jumlah_ayat': instance.jumlahAyat,
      'nama_latin': instance.namaLatin,
      'arti': instance.arti,
      'tempat_turun': instance.tempatTurun,
      'deskripsi': instance.deskripsi,
      'audio': instance.audio,
      'ayat': instance.ayat,
      'surat_selanjutnya': instance.nextAyatModel,
      'surat_sebelumnya': instance.suratSebelumnya,
    };