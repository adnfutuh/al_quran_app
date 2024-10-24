import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_detail.freezed.dart';
part 'city_detail.g.dart';

@freezed
class CityDetail with _$CityDetail {
  const factory CityDetail({
    required String subAdministrativeArea,
    required String locality,
  }) = _CityDetail;

  factory CityDetail.fromJson(Map<String, dynamic> json) =>
      _$CityDetailFromJson(json);
}
