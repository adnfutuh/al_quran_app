// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityDetail _$CityDetailFromJson(Map<String, dynamic> json) {
  return _CityDetail.fromJson(json);
}

/// @nodoc
mixin _$CityDetail {
  String get subAdministrativeArea => throw _privateConstructorUsedError;
  String get locality => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;

  /// Serializes this CityDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityDetailCopyWith<CityDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDetailCopyWith<$Res> {
  factory $CityDetailCopyWith(
          CityDetail value, $Res Function(CityDetail) then) =
      _$CityDetailCopyWithImpl<$Res, CityDetail>;
  @useResult
  $Res call(
      {String subAdministrativeArea,
      String locality,
      String country,
      String date,
      String month,
      String year});
}

/// @nodoc
class _$CityDetailCopyWithImpl<$Res, $Val extends CityDetail>
    implements $CityDetailCopyWith<$Res> {
  _$CityDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subAdministrativeArea = null,
    Object? locality = null,
    Object? country = null,
    Object? date = null,
    Object? month = null,
    Object? year = null,
  }) {
    return _then(_value.copyWith(
      subAdministrativeArea: null == subAdministrativeArea
          ? _value.subAdministrativeArea
          : subAdministrativeArea // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityDetailImplCopyWith<$Res>
    implements $CityDetailCopyWith<$Res> {
  factory _$$CityDetailImplCopyWith(
          _$CityDetailImpl value, $Res Function(_$CityDetailImpl) then) =
      __$$CityDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subAdministrativeArea,
      String locality,
      String country,
      String date,
      String month,
      String year});
}

/// @nodoc
class __$$CityDetailImplCopyWithImpl<$Res>
    extends _$CityDetailCopyWithImpl<$Res, _$CityDetailImpl>
    implements _$$CityDetailImplCopyWith<$Res> {
  __$$CityDetailImplCopyWithImpl(
      _$CityDetailImpl _value, $Res Function(_$CityDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subAdministrativeArea = null,
    Object? locality = null,
    Object? country = null,
    Object? date = null,
    Object? month = null,
    Object? year = null,
  }) {
    return _then(_$CityDetailImpl(
      subAdministrativeArea: null == subAdministrativeArea
          ? _value.subAdministrativeArea
          : subAdministrativeArea // ignore: cast_nullable_to_non_nullable
              as String,
      locality: null == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDetailImpl implements _CityDetail {
  const _$CityDetailImpl(
      {required this.subAdministrativeArea,
      required this.locality,
      required this.country,
      required this.date,
      required this.month,
      required this.year});

  factory _$CityDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDetailImplFromJson(json);

  @override
  final String subAdministrativeArea;
  @override
  final String locality;
  @override
  final String country;
  @override
  final String date;
  @override
  final String month;
  @override
  final String year;

  @override
  String toString() {
    return 'CityDetail(subAdministrativeArea: $subAdministrativeArea, locality: $locality, country: $country, date: $date, month: $month, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDetailImpl &&
            (identical(other.subAdministrativeArea, subAdministrativeArea) ||
                other.subAdministrativeArea == subAdministrativeArea) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, subAdministrativeArea, locality, country, date, month, year);

  /// Create a copy of CityDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDetailImplCopyWith<_$CityDetailImpl> get copyWith =>
      __$$CityDetailImplCopyWithImpl<_$CityDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDetailImplToJson(
      this,
    );
  }
}

abstract class _CityDetail implements CityDetail {
  const factory _CityDetail(
      {required final String subAdministrativeArea,
      required final String locality,
      required final String country,
      required final String date,
      required final String month,
      required final String year}) = _$CityDetailImpl;

  factory _CityDetail.fromJson(Map<String, dynamic> json) =
      _$CityDetailImpl.fromJson;

  @override
  String get subAdministrativeArea;
  @override
  String get locality;
  @override
  String get country;
  @override
  String get date;
  @override
  String get month;
  @override
  String get year;

  /// Create a copy of CityDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityDetailImplCopyWith<_$CityDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
