// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrayerTimeModel _$PrayerTimeModelFromJson(Map<String, dynamic> json) {
  return _PrayerTimeModel.fromJson(json);
}

/// @nodoc
mixin _$PrayerTimeModel {
  String get fajr => throw _privateConstructorUsedError;
  String get dhuhr => throw _privateConstructorUsedError;
  String get asr => throw _privateConstructorUsedError;
  String get maghrib => throw _privateConstructorUsedError;
  String get isha => throw _privateConstructorUsedError;

  /// Serializes this PrayerTimeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrayerTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayerTimeModelCopyWith<PrayerTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerTimeModelCopyWith<$Res> {
  factory $PrayerTimeModelCopyWith(
          PrayerTimeModel value, $Res Function(PrayerTimeModel) then) =
      _$PrayerTimeModelCopyWithImpl<$Res, PrayerTimeModel>;
  @useResult
  $Res call(
      {String fajr, String dhuhr, String asr, String maghrib, String isha});
}

/// @nodoc
class _$PrayerTimeModelCopyWithImpl<$Res, $Val extends PrayerTimeModel>
    implements $PrayerTimeModelCopyWith<$Res> {
  _$PrayerTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayerTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? isha = null,
  }) {
    return _then(_value.copyWith(
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String,
      dhuhr: null == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String,
      asr: null == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerTimeModelImplCopyWith<$Res>
    implements $PrayerTimeModelCopyWith<$Res> {
  factory _$$PrayerTimeModelImplCopyWith(_$PrayerTimeModelImpl value,
          $Res Function(_$PrayerTimeModelImpl) then) =
      __$$PrayerTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fajr, String dhuhr, String asr, String maghrib, String isha});
}

/// @nodoc
class __$$PrayerTimeModelImplCopyWithImpl<$Res>
    extends _$PrayerTimeModelCopyWithImpl<$Res, _$PrayerTimeModelImpl>
    implements _$$PrayerTimeModelImplCopyWith<$Res> {
  __$$PrayerTimeModelImplCopyWithImpl(
      _$PrayerTimeModelImpl _value, $Res Function(_$PrayerTimeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? isha = null,
  }) {
    return _then(_$PrayerTimeModelImpl(
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String,
      dhuhr: null == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String,
      asr: null == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerTimeModelImpl implements _PrayerTimeModel {
  const _$PrayerTimeModelImpl(
      {required this.fajr,
      required this.dhuhr,
      required this.asr,
      required this.maghrib,
      required this.isha});

  factory _$PrayerTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerTimeModelImplFromJson(json);

  @override
  final String fajr;
  @override
  final String dhuhr;
  @override
  final String asr;
  @override
  final String maghrib;
  @override
  final String isha;

  @override
  String toString() {
    return 'PrayerTimeModel(fajr: $fajr, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerTimeModelImpl &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr) &&
            (identical(other.asr, asr) || other.asr == asr) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.isha, isha) || other.isha == isha));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fajr, dhuhr, asr, maghrib, isha);

  /// Create a copy of PrayerTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerTimeModelImplCopyWith<_$PrayerTimeModelImpl> get copyWith =>
      __$$PrayerTimeModelImplCopyWithImpl<_$PrayerTimeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerTimeModelImplToJson(
      this,
    );
  }
}

abstract class _PrayerTimeModel implements PrayerTimeModel {
  const factory _PrayerTimeModel(
      {required final String fajr,
      required final String dhuhr,
      required final String asr,
      required final String maghrib,
      required final String isha}) = _$PrayerTimeModelImpl;

  factory _PrayerTimeModel.fromJson(Map<String, dynamic> json) =
      _$PrayerTimeModelImpl.fromJson;

  @override
  String get fajr;
  @override
  String get dhuhr;
  @override
  String get asr;
  @override
  String get maghrib;
  @override
  String get isha;

  /// Create a copy of PrayerTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerTimeModelImplCopyWith<_$PrayerTimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
