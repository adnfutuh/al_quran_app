import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_model.freezed.dart';
part 'prayer_model.g.dart';

@freezed
class PrayerModel with _$PrayerModel {
  const factory PrayerModel({
    required int id,
    required String judul,
    required String latin,
    required String arab,
    required String terjemah,
  }) = _PrayerModel;

  factory PrayerModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerModelFromJson(json);
}
