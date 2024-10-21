import 'package:freezed_annotation/freezed_annotation.dart';
part 'list_ayat.freezed.dart';
part 'list_ayat.g.dart';

@freezed
class ListAyat with _$ListAyat {
  const factory ListAyat({
    required int nomor,
    required String nama,
    required String namaLatin,
    required int jumlahAyat,
    required String tempatTurun,
    required String arti,
    required String deskripsi,
    required String audio,
  }) = _ListAyat;

  factory ListAyat.fromJson(Map<String, dynamic> json) =>
      _$ListAyatFromJson(json);
}
