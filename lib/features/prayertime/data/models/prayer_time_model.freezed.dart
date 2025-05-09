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
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  PrayerData get data => throw _privateConstructorUsedError;

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
  $Res call({int code, String status, PrayerData data});

  $PrayerDataCopyWith<$Res> get data;
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
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrayerData,
    ) as $Val);
  }

  /// Create a copy of PrayerTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrayerDataCopyWith<$Res> get data {
    return $PrayerDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
  $Res call({int code, String status, PrayerData data});

  @override
  $PrayerDataCopyWith<$Res> get data;
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
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$PrayerTimeModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrayerData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerTimeModelImpl implements _PrayerTimeModel {
  const _$PrayerTimeModelImpl(
      {required this.code, required this.status, required this.data});

  factory _$PrayerTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerTimeModelImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  @override
  final PrayerData data;

  @override
  String toString() {
    return 'PrayerTimeModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerTimeModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

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
      {required final int code,
      required final String status,
      required final PrayerData data}) = _$PrayerTimeModelImpl;

  factory _PrayerTimeModel.fromJson(Map<String, dynamic> json) =
      _$PrayerTimeModelImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  PrayerData get data;

  /// Create a copy of PrayerTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerTimeModelImplCopyWith<_$PrayerTimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerData _$PrayerDataFromJson(Map<String, dynamic> json) {
  return _PrayerData.fromJson(json);
}

/// @nodoc
mixin _$PrayerData {
  Timings get timings => throw _privateConstructorUsedError;
  DateInfo get date => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  /// Serializes this PrayerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrayerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayerDataCopyWith<PrayerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerDataCopyWith<$Res> {
  factory $PrayerDataCopyWith(
          PrayerData value, $Res Function(PrayerData) then) =
      _$PrayerDataCopyWithImpl<$Res, PrayerData>;
  @useResult
  $Res call({Timings timings, DateInfo date, Meta meta});

  $TimingsCopyWith<$Res> get timings;
  $DateInfoCopyWith<$Res> get date;
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$PrayerDataCopyWithImpl<$Res, $Val extends PrayerData>
    implements $PrayerDataCopyWith<$Res> {
  _$PrayerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
    Object? date = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as Timings,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateInfo,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  /// Create a copy of PrayerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimingsCopyWith<$Res> get timings {
    return $TimingsCopyWith<$Res>(_value.timings, (value) {
      return _then(_value.copyWith(timings: value) as $Val);
    });
  }

  /// Create a copy of PrayerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateInfoCopyWith<$Res> get date {
    return $DateInfoCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  /// Create a copy of PrayerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerDataImplCopyWith<$Res>
    implements $PrayerDataCopyWith<$Res> {
  factory _$$PrayerDataImplCopyWith(
          _$PrayerDataImpl value, $Res Function(_$PrayerDataImpl) then) =
      __$$PrayerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timings timings, DateInfo date, Meta meta});

  @override
  $TimingsCopyWith<$Res> get timings;
  @override
  $DateInfoCopyWith<$Res> get date;
  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$PrayerDataImplCopyWithImpl<$Res>
    extends _$PrayerDataCopyWithImpl<$Res, _$PrayerDataImpl>
    implements _$$PrayerDataImplCopyWith<$Res> {
  __$$PrayerDataImplCopyWithImpl(
      _$PrayerDataImpl _value, $Res Function(_$PrayerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
    Object? date = null,
    Object? meta = null,
  }) {
    return _then(_$PrayerDataImpl(
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as Timings,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateInfo,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerDataImpl implements _PrayerData {
  const _$PrayerDataImpl(
      {required this.timings, required this.date, required this.meta});

  factory _$PrayerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerDataImplFromJson(json);

  @override
  final Timings timings;
  @override
  final DateInfo date;
  @override
  final Meta meta;

  @override
  String toString() {
    return 'PrayerData(timings: $timings, date: $date, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerDataImpl &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timings, date, meta);

  /// Create a copy of PrayerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerDataImplCopyWith<_$PrayerDataImpl> get copyWith =>
      __$$PrayerDataImplCopyWithImpl<_$PrayerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerDataImplToJson(
      this,
    );
  }
}

abstract class _PrayerData implements PrayerData {
  const factory _PrayerData(
      {required final Timings timings,
      required final DateInfo date,
      required final Meta meta}) = _$PrayerDataImpl;

  factory _PrayerData.fromJson(Map<String, dynamic> json) =
      _$PrayerDataImpl.fromJson;

  @override
  Timings get timings;
  @override
  DateInfo get date;
  @override
  Meta get meta;

  /// Create a copy of PrayerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerDataImplCopyWith<_$PrayerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Timings _$TimingsFromJson(Map<String, dynamic> json) {
  return _Timings.fromJson(json);
}

/// @nodoc
mixin _$Timings {
  String get Fajr => throw _privateConstructorUsedError;
  String get Sunrise => throw _privateConstructorUsedError;
  String get Dhuhr => throw _privateConstructorUsedError;
  String get Asr => throw _privateConstructorUsedError;
  String get Sunset => throw _privateConstructorUsedError;
  String get Maghrib => throw _privateConstructorUsedError;
  String get Isha => throw _privateConstructorUsedError;
  String get Imsak => throw _privateConstructorUsedError;
  String get Firstthird => throw _privateConstructorUsedError;
  String get Lastthird => throw _privateConstructorUsedError;
  String get Midnight => throw _privateConstructorUsedError;

  /// Serializes this Timings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Timings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimingsCopyWith<Timings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingsCopyWith<$Res> {
  factory $TimingsCopyWith(Timings value, $Res Function(Timings) then) =
      _$TimingsCopyWithImpl<$Res, Timings>;
  @useResult
  $Res call(
      {String Fajr,
      String Sunrise,
      String Dhuhr,
      String Asr,
      String Sunset,
      String Maghrib,
      String Isha,
      String Imsak,
      String Firstthird,
      String Lastthird,
      String Midnight});
}

/// @nodoc
class _$TimingsCopyWithImpl<$Res, $Val extends Timings>
    implements $TimingsCopyWith<$Res> {
  _$TimingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Timings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Fajr = null,
    Object? Sunrise = null,
    Object? Dhuhr = null,
    Object? Asr = null,
    Object? Sunset = null,
    Object? Maghrib = null,
    Object? Isha = null,
    Object? Imsak = null,
    Object? Firstthird = null,
    Object? Lastthird = null,
    Object? Midnight = null,
  }) {
    return _then(_value.copyWith(
      Fajr: null == Fajr
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as String,
      Sunrise: null == Sunrise
          ? _value.Sunrise
          : Sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      Dhuhr: null == Dhuhr
          ? _value.Dhuhr
          : Dhuhr // ignore: cast_nullable_to_non_nullable
              as String,
      Asr: null == Asr
          ? _value.Asr
          : Asr // ignore: cast_nullable_to_non_nullable
              as String,
      Sunset: null == Sunset
          ? _value.Sunset
          : Sunset // ignore: cast_nullable_to_non_nullable
              as String,
      Maghrib: null == Maghrib
          ? _value.Maghrib
          : Maghrib // ignore: cast_nullable_to_non_nullable
              as String,
      Isha: null == Isha
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as String,
      Imsak: null == Imsak
          ? _value.Imsak
          : Imsak // ignore: cast_nullable_to_non_nullable
              as String,
      Firstthird: null == Firstthird
          ? _value.Firstthird
          : Firstthird // ignore: cast_nullable_to_non_nullable
              as String,
      Lastthird: null == Lastthird
          ? _value.Lastthird
          : Lastthird // ignore: cast_nullable_to_non_nullable
              as String,
      Midnight: null == Midnight
          ? _value.Midnight
          : Midnight // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimingsImplCopyWith<$Res> implements $TimingsCopyWith<$Res> {
  factory _$$TimingsImplCopyWith(
          _$TimingsImpl value, $Res Function(_$TimingsImpl) then) =
      __$$TimingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String Fajr,
      String Sunrise,
      String Dhuhr,
      String Asr,
      String Sunset,
      String Maghrib,
      String Isha,
      String Imsak,
      String Firstthird,
      String Lastthird,
      String Midnight});
}

/// @nodoc
class __$$TimingsImplCopyWithImpl<$Res>
    extends _$TimingsCopyWithImpl<$Res, _$TimingsImpl>
    implements _$$TimingsImplCopyWith<$Res> {
  __$$TimingsImplCopyWithImpl(
      _$TimingsImpl _value, $Res Function(_$TimingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Timings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Fajr = null,
    Object? Sunrise = null,
    Object? Dhuhr = null,
    Object? Asr = null,
    Object? Sunset = null,
    Object? Maghrib = null,
    Object? Isha = null,
    Object? Imsak = null,
    Object? Firstthird = null,
    Object? Lastthird = null,
    Object? Midnight = null,
  }) {
    return _then(_$TimingsImpl(
      Fajr: null == Fajr
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as String,
      Sunrise: null == Sunrise
          ? _value.Sunrise
          : Sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      Dhuhr: null == Dhuhr
          ? _value.Dhuhr
          : Dhuhr // ignore: cast_nullable_to_non_nullable
              as String,
      Asr: null == Asr
          ? _value.Asr
          : Asr // ignore: cast_nullable_to_non_nullable
              as String,
      Sunset: null == Sunset
          ? _value.Sunset
          : Sunset // ignore: cast_nullable_to_non_nullable
              as String,
      Maghrib: null == Maghrib
          ? _value.Maghrib
          : Maghrib // ignore: cast_nullable_to_non_nullable
              as String,
      Isha: null == Isha
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as String,
      Imsak: null == Imsak
          ? _value.Imsak
          : Imsak // ignore: cast_nullable_to_non_nullable
              as String,
      Firstthird: null == Firstthird
          ? _value.Firstthird
          : Firstthird // ignore: cast_nullable_to_non_nullable
              as String,
      Lastthird: null == Lastthird
          ? _value.Lastthird
          : Lastthird // ignore: cast_nullable_to_non_nullable
              as String,
      Midnight: null == Midnight
          ? _value.Midnight
          : Midnight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimingsImpl implements _Timings {
  const _$TimingsImpl(
      {required this.Fajr,
      required this.Sunrise,
      required this.Dhuhr,
      required this.Asr,
      required this.Sunset,
      required this.Maghrib,
      required this.Isha,
      required this.Imsak,
      required this.Firstthird,
      required this.Lastthird,
      required this.Midnight});

  factory _$TimingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimingsImplFromJson(json);

  @override
  final String Fajr;
  @override
  final String Sunrise;
  @override
  final String Dhuhr;
  @override
  final String Asr;
  @override
  final String Sunset;
  @override
  final String Maghrib;
  @override
  final String Isha;
  @override
  final String Imsak;
  @override
  final String Firstthird;
  @override
  final String Lastthird;
  @override
  final String Midnight;

  @override
  String toString() {
    return 'Timings(Fajr: $Fajr, Sunrise: $Sunrise, Dhuhr: $Dhuhr, Asr: $Asr, Sunset: $Sunset, Maghrib: $Maghrib, Isha: $Isha, Imsak: $Imsak, Firstthird: $Firstthird, Lastthird: $Lastthird, Midnight: $Midnight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimingsImpl &&
            (identical(other.Fajr, Fajr) || other.Fajr == Fajr) &&
            (identical(other.Sunrise, Sunrise) || other.Sunrise == Sunrise) &&
            (identical(other.Dhuhr, Dhuhr) || other.Dhuhr == Dhuhr) &&
            (identical(other.Asr, Asr) || other.Asr == Asr) &&
            (identical(other.Sunset, Sunset) || other.Sunset == Sunset) &&
            (identical(other.Maghrib, Maghrib) || other.Maghrib == Maghrib) &&
            (identical(other.Isha, Isha) || other.Isha == Isha) &&
            (identical(other.Imsak, Imsak) || other.Imsak == Imsak) &&
            (identical(other.Firstthird, Firstthird) ||
                other.Firstthird == Firstthird) &&
            (identical(other.Lastthird, Lastthird) ||
                other.Lastthird == Lastthird) &&
            (identical(other.Midnight, Midnight) ||
                other.Midnight == Midnight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, Fajr, Sunrise, Dhuhr, Asr,
      Sunset, Maghrib, Isha, Imsak, Firstthird, Lastthird, Midnight);

  /// Create a copy of Timings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimingsImplCopyWith<_$TimingsImpl> get copyWith =>
      __$$TimingsImplCopyWithImpl<_$TimingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimingsImplToJson(
      this,
    );
  }
}

abstract class _Timings implements Timings {
  const factory _Timings(
      {required final String Fajr,
      required final String Sunrise,
      required final String Dhuhr,
      required final String Asr,
      required final String Sunset,
      required final String Maghrib,
      required final String Isha,
      required final String Imsak,
      required final String Firstthird,
      required final String Lastthird,
      required final String Midnight}) = _$TimingsImpl;

  factory _Timings.fromJson(Map<String, dynamic> json) = _$TimingsImpl.fromJson;

  @override
  String get Fajr;
  @override
  String get Sunrise;
  @override
  String get Dhuhr;
  @override
  String get Asr;
  @override
  String get Sunset;
  @override
  String get Maghrib;
  @override
  String get Isha;
  @override
  String get Imsak;
  @override
  String get Firstthird;
  @override
  String get Lastthird;
  @override
  String get Midnight;

  /// Create a copy of Timings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimingsImplCopyWith<_$TimingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DateInfo _$DateInfoFromJson(Map<String, dynamic> json) {
  return _DateInfo.fromJson(json);
}

/// @nodoc
mixin _$DateInfo {
  String get readable => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  Gregorian get gregorian => throw _privateConstructorUsedError;
  Hijri get hijri => throw _privateConstructorUsedError;

  /// Serializes this DateInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateInfoCopyWith<DateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateInfoCopyWith<$Res> {
  factory $DateInfoCopyWith(DateInfo value, $Res Function(DateInfo) then) =
      _$DateInfoCopyWithImpl<$Res, DateInfo>;
  @useResult
  $Res call(
      {String readable, String timestamp, Gregorian gregorian, Hijri hijri});

  $GregorianCopyWith<$Res> get gregorian;
  $HijriCopyWith<$Res> get hijri;
}

/// @nodoc
class _$DateInfoCopyWithImpl<$Res, $Val extends DateInfo>
    implements $DateInfoCopyWith<$Res> {
  _$DateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = null,
    Object? timestamp = null,
    Object? gregorian = null,
    Object? hijri = null,
  }) {
    return _then(_value.copyWith(
      readable: null == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      gregorian: null == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as Gregorian,
      hijri: null == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as Hijri,
    ) as $Val);
  }

  /// Create a copy of DateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GregorianCopyWith<$Res> get gregorian {
    return $GregorianCopyWith<$Res>(_value.gregorian, (value) {
      return _then(_value.copyWith(gregorian: value) as $Val);
    });
  }

  /// Create a copy of DateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HijriCopyWith<$Res> get hijri {
    return $HijriCopyWith<$Res>(_value.hijri, (value) {
      return _then(_value.copyWith(hijri: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DateInfoImplCopyWith<$Res>
    implements $DateInfoCopyWith<$Res> {
  factory _$$DateInfoImplCopyWith(
          _$DateInfoImpl value, $Res Function(_$DateInfoImpl) then) =
      __$$DateInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String readable, String timestamp, Gregorian gregorian, Hijri hijri});

  @override
  $GregorianCopyWith<$Res> get gregorian;
  @override
  $HijriCopyWith<$Res> get hijri;
}

/// @nodoc
class __$$DateInfoImplCopyWithImpl<$Res>
    extends _$DateInfoCopyWithImpl<$Res, _$DateInfoImpl>
    implements _$$DateInfoImplCopyWith<$Res> {
  __$$DateInfoImplCopyWithImpl(
      _$DateInfoImpl _value, $Res Function(_$DateInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = null,
    Object? timestamp = null,
    Object? gregorian = null,
    Object? hijri = null,
  }) {
    return _then(_$DateInfoImpl(
      readable: null == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      gregorian: null == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as Gregorian,
      hijri: null == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as Hijri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateInfoImpl implements _DateInfo {
  const _$DateInfoImpl(
      {required this.readable,
      required this.timestamp,
      required this.gregorian,
      required this.hijri});

  factory _$DateInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateInfoImplFromJson(json);

  @override
  final String readable;
  @override
  final String timestamp;
  @override
  final Gregorian gregorian;
  @override
  final Hijri hijri;

  @override
  String toString() {
    return 'DateInfo(readable: $readable, timestamp: $timestamp, gregorian: $gregorian, hijri: $hijri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateInfoImpl &&
            (identical(other.readable, readable) ||
                other.readable == readable) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.gregorian, gregorian) ||
                other.gregorian == gregorian) &&
            (identical(other.hijri, hijri) || other.hijri == hijri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, readable, timestamp, gregorian, hijri);

  /// Create a copy of DateInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateInfoImplCopyWith<_$DateInfoImpl> get copyWith =>
      __$$DateInfoImplCopyWithImpl<_$DateInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateInfoImplToJson(
      this,
    );
  }
}

abstract class _DateInfo implements DateInfo {
  const factory _DateInfo(
      {required final String readable,
      required final String timestamp,
      required final Gregorian gregorian,
      required final Hijri hijri}) = _$DateInfoImpl;

  factory _DateInfo.fromJson(Map<String, dynamic> json) =
      _$DateInfoImpl.fromJson;

  @override
  String get readable;
  @override
  String get timestamp;
  @override
  Gregorian get gregorian;
  @override
  Hijri get hijri;

  /// Create a copy of DateInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateInfoImplCopyWith<_$DateInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Gregorian _$GregorianFromJson(Map<String, dynamic> json) {
  return _Gregorian.fromJson(json);
}

/// @nodoc
mixin _$Gregorian {
  String get date => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  Weekday get weekday => throw _privateConstructorUsedError;
  Month get month => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  Designation get designation => throw _privateConstructorUsedError;

  /// Serializes this Gregorian to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Gregorian
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GregorianCopyWith<Gregorian> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianCopyWith<$Res> {
  factory $GregorianCopyWith(Gregorian value, $Res Function(Gregorian) then) =
      _$GregorianCopyWithImpl<$Res, Gregorian>;
  @useResult
  $Res call(
      {String date,
      String format,
      String day,
      Weekday weekday,
      Month month,
      String year,
      Designation designation});

  $WeekdayCopyWith<$Res> get weekday;
  $MonthCopyWith<$Res> get month;
  $DesignationCopyWith<$Res> get designation;
}

/// @nodoc
class _$GregorianCopyWithImpl<$Res, $Val extends Gregorian>
    implements $GregorianCopyWith<$Res> {
  _$GregorianCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gregorian
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = null,
    Object? day = null,
    Object? weekday = null,
    Object? month = null,
    Object? year = null,
    Object? designation = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as Weekday,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as Month,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation,
    ) as $Val);
  }

  /// Create a copy of Gregorian
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekdayCopyWith<$Res> get weekday {
    return $WeekdayCopyWith<$Res>(_value.weekday, (value) {
      return _then(_value.copyWith(weekday: value) as $Val);
    });
  }

  /// Create a copy of Gregorian
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonthCopyWith<$Res> get month {
    return $MonthCopyWith<$Res>(_value.month, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  /// Create a copy of Gregorian
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DesignationCopyWith<$Res> get designation {
    return $DesignationCopyWith<$Res>(_value.designation, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GregorianImplCopyWith<$Res>
    implements $GregorianCopyWith<$Res> {
  factory _$$GregorianImplCopyWith(
          _$GregorianImpl value, $Res Function(_$GregorianImpl) then) =
      __$$GregorianImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      String format,
      String day,
      Weekday weekday,
      Month month,
      String year,
      Designation designation});

  @override
  $WeekdayCopyWith<$Res> get weekday;
  @override
  $MonthCopyWith<$Res> get month;
  @override
  $DesignationCopyWith<$Res> get designation;
}

/// @nodoc
class __$$GregorianImplCopyWithImpl<$Res>
    extends _$GregorianCopyWithImpl<$Res, _$GregorianImpl>
    implements _$$GregorianImplCopyWith<$Res> {
  __$$GregorianImplCopyWithImpl(
      _$GregorianImpl _value, $Res Function(_$GregorianImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gregorian
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = null,
    Object? day = null,
    Object? weekday = null,
    Object? month = null,
    Object? year = null,
    Object? designation = null,
  }) {
    return _then(_$GregorianImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as Weekday,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as Month,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GregorianImpl implements _Gregorian {
  const _$GregorianImpl(
      {required this.date,
      required this.format,
      required this.day,
      required this.weekday,
      required this.month,
      required this.year,
      required this.designation});

  factory _$GregorianImpl.fromJson(Map<String, dynamic> json) =>
      _$$GregorianImplFromJson(json);

  @override
  final String date;
  @override
  final String format;
  @override
  final String day;
  @override
  final Weekday weekday;
  @override
  final Month month;
  @override
  final String year;
  @override
  final Designation designation;

  @override
  String toString() {
    return 'Gregorian(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GregorianImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, format, day, weekday, month, year, designation);

  /// Create a copy of Gregorian
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GregorianImplCopyWith<_$GregorianImpl> get copyWith =>
      __$$GregorianImplCopyWithImpl<_$GregorianImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GregorianImplToJson(
      this,
    );
  }
}

abstract class _Gregorian implements Gregorian {
  const factory _Gregorian(
      {required final String date,
      required final String format,
      required final String day,
      required final Weekday weekday,
      required final Month month,
      required final String year,
      required final Designation designation}) = _$GregorianImpl;

  factory _Gregorian.fromJson(Map<String, dynamic> json) =
      _$GregorianImpl.fromJson;

  @override
  String get date;
  @override
  String get format;
  @override
  String get day;
  @override
  Weekday get weekday;
  @override
  Month get month;
  @override
  String get year;
  @override
  Designation get designation;

  /// Create a copy of Gregorian
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GregorianImplCopyWith<_$GregorianImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hijri _$HijriFromJson(Map<String, dynamic> json) {
  return _Hijri.fromJson(json);
}

/// @nodoc
mixin _$Hijri {
  String get date => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  Weekday get weekday => throw _privateConstructorUsedError;
  Month get month => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  Designation get designation => throw _privateConstructorUsedError;
  List<String> get holidays => throw _privateConstructorUsedError;

  /// Serializes this Hijri to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hijri
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HijriCopyWith<Hijri> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriCopyWith<$Res> {
  factory $HijriCopyWith(Hijri value, $Res Function(Hijri) then) =
      _$HijriCopyWithImpl<$Res, Hijri>;
  @useResult
  $Res call(
      {String date,
      String format,
      String day,
      Weekday weekday,
      Month month,
      String year,
      Designation designation,
      List<String> holidays});

  $WeekdayCopyWith<$Res> get weekday;
  $MonthCopyWith<$Res> get month;
  $DesignationCopyWith<$Res> get designation;
}

/// @nodoc
class _$HijriCopyWithImpl<$Res, $Val extends Hijri>
    implements $HijriCopyWith<$Res> {
  _$HijriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hijri
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = null,
    Object? day = null,
    Object? weekday = null,
    Object? month = null,
    Object? year = null,
    Object? designation = null,
    Object? holidays = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as Weekday,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as Month,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation,
      holidays: null == holidays
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of Hijri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekdayCopyWith<$Res> get weekday {
    return $WeekdayCopyWith<$Res>(_value.weekday, (value) {
      return _then(_value.copyWith(weekday: value) as $Val);
    });
  }

  /// Create a copy of Hijri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonthCopyWith<$Res> get month {
    return $MonthCopyWith<$Res>(_value.month, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  /// Create a copy of Hijri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DesignationCopyWith<$Res> get designation {
    return $DesignationCopyWith<$Res>(_value.designation, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HijriImplCopyWith<$Res> implements $HijriCopyWith<$Res> {
  factory _$$HijriImplCopyWith(
          _$HijriImpl value, $Res Function(_$HijriImpl) then) =
      __$$HijriImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      String format,
      String day,
      Weekday weekday,
      Month month,
      String year,
      Designation designation,
      List<String> holidays});

  @override
  $WeekdayCopyWith<$Res> get weekday;
  @override
  $MonthCopyWith<$Res> get month;
  @override
  $DesignationCopyWith<$Res> get designation;
}

/// @nodoc
class __$$HijriImplCopyWithImpl<$Res>
    extends _$HijriCopyWithImpl<$Res, _$HijriImpl>
    implements _$$HijriImplCopyWith<$Res> {
  __$$HijriImplCopyWithImpl(
      _$HijriImpl _value, $Res Function(_$HijriImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hijri
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = null,
    Object? day = null,
    Object? weekday = null,
    Object? month = null,
    Object? year = null,
    Object? designation = null,
    Object? holidays = null,
  }) {
    return _then(_$HijriImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as Weekday,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as Month,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation,
      holidays: null == holidays
          ? _value._holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HijriImpl implements _Hijri {
  const _$HijriImpl(
      {required this.date,
      required this.format,
      required this.day,
      required this.weekday,
      required this.month,
      required this.year,
      required this.designation,
      required final List<String> holidays})
      : _holidays = holidays;

  factory _$HijriImpl.fromJson(Map<String, dynamic> json) =>
      _$$HijriImplFromJson(json);

  @override
  final String date;
  @override
  final String format;
  @override
  final String day;
  @override
  final Weekday weekday;
  @override
  final Month month;
  @override
  final String year;
  @override
  final Designation designation;
  final List<String> _holidays;
  @override
  List<String> get holidays {
    if (_holidays is EqualUnmodifiableListView) return _holidays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holidays);
  }

  @override
  String toString() {
    return 'Hijri(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation, holidays: $holidays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HijriImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            const DeepCollectionEquality().equals(other._holidays, _holidays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, format, day, weekday,
      month, year, designation, const DeepCollectionEquality().hash(_holidays));

  /// Create a copy of Hijri
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HijriImplCopyWith<_$HijriImpl> get copyWith =>
      __$$HijriImplCopyWithImpl<_$HijriImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HijriImplToJson(
      this,
    );
  }
}

abstract class _Hijri implements Hijri {
  const factory _Hijri(
      {required final String date,
      required final String format,
      required final String day,
      required final Weekday weekday,
      required final Month month,
      required final String year,
      required final Designation designation,
      required final List<String> holidays}) = _$HijriImpl;

  factory _Hijri.fromJson(Map<String, dynamic> json) = _$HijriImpl.fromJson;

  @override
  String get date;
  @override
  String get format;
  @override
  String get day;
  @override
  Weekday get weekday;
  @override
  Month get month;
  @override
  String get year;
  @override
  Designation get designation;
  @override
  List<String> get holidays;

  /// Create a copy of Hijri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HijriImplCopyWith<_$HijriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weekday _$WeekdayFromJson(Map<String, dynamic> json) {
  return _Weekday.fromJson(json);
}

/// @nodoc
mixin _$Weekday {
  String get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  /// Serializes this Weekday to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Weekday
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekdayCopyWith<Weekday> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekdayCopyWith<$Res> {
  factory $WeekdayCopyWith(Weekday value, $Res Function(Weekday) then) =
      _$WeekdayCopyWithImpl<$Res, Weekday>;
  @useResult
  $Res call({String en, String? ar});
}

/// @nodoc
class _$WeekdayCopyWithImpl<$Res, $Val extends Weekday>
    implements $WeekdayCopyWith<$Res> {
  _$WeekdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weekday
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekdayImplCopyWith<$Res> implements $WeekdayCopyWith<$Res> {
  factory _$$WeekdayImplCopyWith(
          _$WeekdayImpl value, $Res Function(_$WeekdayImpl) then) =
      __$$WeekdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en, String? ar});
}

/// @nodoc
class __$$WeekdayImplCopyWithImpl<$Res>
    extends _$WeekdayCopyWithImpl<$Res, _$WeekdayImpl>
    implements _$$WeekdayImplCopyWith<$Res> {
  __$$WeekdayImplCopyWithImpl(
      _$WeekdayImpl _value, $Res Function(_$WeekdayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Weekday
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ar = freezed,
  }) {
    return _then(_$WeekdayImpl(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekdayImpl implements _Weekday {
  const _$WeekdayImpl({required this.en, this.ar});

  factory _$WeekdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekdayImplFromJson(json);

  @override
  final String en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'Weekday(en: $en, ar: $ar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekdayImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en, ar);

  /// Create a copy of Weekday
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekdayImplCopyWith<_$WeekdayImpl> get copyWith =>
      __$$WeekdayImplCopyWithImpl<_$WeekdayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekdayImplToJson(
      this,
    );
  }
}

abstract class _Weekday implements Weekday {
  const factory _Weekday({required final String en, final String? ar}) =
      _$WeekdayImpl;

  factory _Weekday.fromJson(Map<String, dynamic> json) = _$WeekdayImpl.fromJson;

  @override
  String get en;
  @override
  String? get ar;

  /// Create a copy of Weekday
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekdayImplCopyWith<_$WeekdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Month _$MonthFromJson(Map<String, dynamic> json) {
  return _Month.fromJson(json);
}

/// @nodoc
mixin _$Month {
  int get number => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  /// Serializes this Month to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Month
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthCopyWith<Month> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthCopyWith<$Res> {
  factory $MonthCopyWith(Month value, $Res Function(Month) then) =
      _$MonthCopyWithImpl<$Res, Month>;
  @useResult
  $Res call({int number, String en, String? ar});
}

/// @nodoc
class _$MonthCopyWithImpl<$Res, $Val extends Month>
    implements $MonthCopyWith<$Res> {
  _$MonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Month
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? en = null,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthImplCopyWith<$Res> implements $MonthCopyWith<$Res> {
  factory _$$MonthImplCopyWith(
          _$MonthImpl value, $Res Function(_$MonthImpl) then) =
      __$$MonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String en, String? ar});
}

/// @nodoc
class __$$MonthImplCopyWithImpl<$Res>
    extends _$MonthCopyWithImpl<$Res, _$MonthImpl>
    implements _$$MonthImplCopyWith<$Res> {
  __$$MonthImplCopyWithImpl(
      _$MonthImpl _value, $Res Function(_$MonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of Month
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? en = null,
    Object? ar = freezed,
  }) {
    return _then(_$MonthImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthImpl implements _Month {
  const _$MonthImpl({required this.number, required this.en, this.ar});

  factory _$MonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthImplFromJson(json);

  @override
  final int number;
  @override
  final String en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'Month(number: $number, en: $en, ar: $ar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, en, ar);

  /// Create a copy of Month
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthImplCopyWith<_$MonthImpl> get copyWith =>
      __$$MonthImplCopyWithImpl<_$MonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthImplToJson(
      this,
    );
  }
}

abstract class _Month implements Month {
  const factory _Month(
      {required final int number,
      required final String en,
      final String? ar}) = _$MonthImpl;

  factory _Month.fromJson(Map<String, dynamic> json) = _$MonthImpl.fromJson;

  @override
  int get number;
  @override
  String get en;
  @override
  String? get ar;

  /// Create a copy of Month
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthImplCopyWith<_$MonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Designation _$DesignationFromJson(Map<String, dynamic> json) {
  return _Designation.fromJson(json);
}

/// @nodoc
mixin _$Designation {
  String get abbreviated => throw _privateConstructorUsedError;
  String get expanded => throw _privateConstructorUsedError;

  /// Serializes this Designation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Designation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DesignationCopyWith<Designation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationCopyWith<$Res> {
  factory $DesignationCopyWith(
          Designation value, $Res Function(Designation) then) =
      _$DesignationCopyWithImpl<$Res, Designation>;
  @useResult
  $Res call({String abbreviated, String expanded});
}

/// @nodoc
class _$DesignationCopyWithImpl<$Res, $Val extends Designation>
    implements $DesignationCopyWith<$Res> {
  _$DesignationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Designation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = null,
    Object? expanded = null,
  }) {
    return _then(_value.copyWith(
      abbreviated: null == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignationImplCopyWith<$Res>
    implements $DesignationCopyWith<$Res> {
  factory _$$DesignationImplCopyWith(
          _$DesignationImpl value, $Res Function(_$DesignationImpl) then) =
      __$$DesignationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String abbreviated, String expanded});
}

/// @nodoc
class __$$DesignationImplCopyWithImpl<$Res>
    extends _$DesignationCopyWithImpl<$Res, _$DesignationImpl>
    implements _$$DesignationImplCopyWith<$Res> {
  __$$DesignationImplCopyWithImpl(
      _$DesignationImpl _value, $Res Function(_$DesignationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Designation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = null,
    Object? expanded = null,
  }) {
    return _then(_$DesignationImpl(
      abbreviated: null == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignationImpl implements _Designation {
  const _$DesignationImpl({required this.abbreviated, required this.expanded});

  factory _$DesignationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignationImplFromJson(json);

  @override
  final String abbreviated;
  @override
  final String expanded;

  @override
  String toString() {
    return 'Designation(abbreviated: $abbreviated, expanded: $expanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignationImpl &&
            (identical(other.abbreviated, abbreviated) ||
                other.abbreviated == abbreviated) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, abbreviated, expanded);

  /// Create a copy of Designation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignationImplCopyWith<_$DesignationImpl> get copyWith =>
      __$$DesignationImplCopyWithImpl<_$DesignationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignationImplToJson(
      this,
    );
  }
}

abstract class _Designation implements Designation {
  const factory _Designation(
      {required final String abbreviated,
      required final String expanded}) = _$DesignationImpl;

  factory _Designation.fromJson(Map<String, dynamic> json) =
      _$DesignationImpl.fromJson;

  @override
  String get abbreviated;
  @override
  String get expanded;

  /// Create a copy of Designation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DesignationImplCopyWith<_$DesignationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  Method get method => throw _privateConstructorUsedError;
  String get latitudeAdjustmentMethod => throw _privateConstructorUsedError;
  String get midnightMode => throw _privateConstructorUsedError;
  String get school => throw _privateConstructorUsedError;
  Map<String, dynamic> get offset => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String timezone,
      Method method,
      String latitudeAdjustmentMethod,
      String midnightMode,
      String school,
      Map<String, dynamic> offset});

  $MethodCopyWith<$Res> get method;
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? timezone = null,
    Object? method = null,
    Object? latitudeAdjustmentMethod = null,
    Object? midnightMode = null,
    Object? school = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method,
      latitudeAdjustmentMethod: null == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      midnightMode: null == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MethodCopyWith<$Res> get method {
    return $MethodCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String timezone,
      Method method,
      String latitudeAdjustmentMethod,
      String midnightMode,
      String school,
      Map<String, dynamic> offset});

  @override
  $MethodCopyWith<$Res> get method;
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? timezone = null,
    Object? method = null,
    Object? latitudeAdjustmentMethod = null,
    Object? midnightMode = null,
    Object? school = null,
    Object? offset = null,
  }) {
    return _then(_$MetaImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method,
      latitudeAdjustmentMethod: null == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      midnightMode: null == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value._offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {required this.latitude,
      required this.longitude,
      required this.timezone,
      required this.method,
      required this.latitudeAdjustmentMethod,
      required this.midnightMode,
      required this.school,
      required final Map<String, dynamic> offset})
      : _offset = offset;

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String timezone;
  @override
  final Method method;
  @override
  final String latitudeAdjustmentMethod;
  @override
  final String midnightMode;
  @override
  final String school;
  final Map<String, dynamic> _offset;
  @override
  Map<String, dynamic> get offset {
    if (_offset is EqualUnmodifiableMapView) return _offset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_offset);
  }

  @override
  String toString() {
    return 'Meta(latitude: $latitude, longitude: $longitude, timezone: $timezone, method: $method, latitudeAdjustmentMethod: $latitudeAdjustmentMethod, midnightMode: $midnightMode, school: $school, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(
                    other.latitudeAdjustmentMethod, latitudeAdjustmentMethod) ||
                other.latitudeAdjustmentMethod == latitudeAdjustmentMethod) &&
            (identical(other.midnightMode, midnightMode) ||
                other.midnightMode == midnightMode) &&
            (identical(other.school, school) || other.school == school) &&
            const DeepCollectionEquality().equals(other._offset, _offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      timezone,
      method,
      latitudeAdjustmentMethod,
      midnightMode,
      school,
      const DeepCollectionEquality().hash(_offset));

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {required final double latitude,
      required final double longitude,
      required final String timezone,
      required final Method method,
      required final String latitudeAdjustmentMethod,
      required final String midnightMode,
      required final String school,
      required final Map<String, dynamic> offset}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get timezone;
  @override
  Method get method;
  @override
  String get latitudeAdjustmentMethod;
  @override
  String get midnightMode;
  @override
  String get school;
  @override
  Map<String, dynamic> get offset;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Method _$MethodFromJson(Map<String, dynamic> json) {
  return _Method.fromJson(json);
}

/// @nodoc
mixin _$Method {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, dynamic> get params => throw _privateConstructorUsedError;
  Map<String, dynamic> get location => throw _privateConstructorUsedError;

  /// Serializes this Method to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Method
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MethodCopyWith<Method> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodCopyWith<$Res> {
  factory $MethodCopyWith(Method value, $Res Function(Method) then) =
      _$MethodCopyWithImpl<$Res, Method>;
  @useResult
  $Res call(
      {int id,
      String name,
      Map<String, dynamic> params,
      Map<String, dynamic> location});
}

/// @nodoc
class _$MethodCopyWithImpl<$Res, $Val extends Method>
    implements $MethodCopyWith<$Res> {
  _$MethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Method
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? params = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MethodImplCopyWith<$Res> implements $MethodCopyWith<$Res> {
  factory _$$MethodImplCopyWith(
          _$MethodImpl value, $Res Function(_$MethodImpl) then) =
      __$$MethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Map<String, dynamic> params,
      Map<String, dynamic> location});
}

/// @nodoc
class __$$MethodImplCopyWithImpl<$Res>
    extends _$MethodCopyWithImpl<$Res, _$MethodImpl>
    implements _$$MethodImplCopyWith<$Res> {
  __$$MethodImplCopyWithImpl(
      _$MethodImpl _value, $Res Function(_$MethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of Method
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? params = null,
    Object? location = null,
  }) {
    return _then(_$MethodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MethodImpl implements _Method {
  const _$MethodImpl(
      {required this.id,
      required this.name,
      required final Map<String, dynamic> params,
      required final Map<String, dynamic> location})
      : _params = params,
        _location = location;

  factory _$MethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$MethodImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final Map<String, dynamic> _params;
  @override
  Map<String, dynamic> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  final Map<String, dynamic> _location;
  @override
  Map<String, dynamic> get location {
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  @override
  String toString() {
    return 'Method(id: $id, name: $name, params: $params, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_params),
      const DeepCollectionEquality().hash(_location));

  /// Create a copy of Method
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MethodImplCopyWith<_$MethodImpl> get copyWith =>
      __$$MethodImplCopyWithImpl<_$MethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MethodImplToJson(
      this,
    );
  }
}

abstract class _Method implements Method {
  const factory _Method(
      {required final int id,
      required final String name,
      required final Map<String, dynamic> params,
      required final Map<String, dynamic> location}) = _$MethodImpl;

  factory _Method.fromJson(Map<String, dynamic> json) = _$MethodImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Map<String, dynamic> get params;
  @override
  Map<String, dynamic> get location;

  /// Create a copy of Method
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MethodImplCopyWith<_$MethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
