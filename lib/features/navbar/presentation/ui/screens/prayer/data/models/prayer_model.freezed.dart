// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrayerModel _$PrayerModelFromJson(Map<String, dynamic> json) {
  return _PrayerModel.fromJson(json);
}

/// @nodoc
mixin _$PrayerModel {
  int get id => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get latin => throw _privateConstructorUsedError;
  String get arab => throw _privateConstructorUsedError;
  String get terjemah => throw _privateConstructorUsedError;

  /// Serializes this PrayerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrayerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayerModelCopyWith<PrayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerModelCopyWith<$Res> {
  factory $PrayerModelCopyWith(
          PrayerModel value, $Res Function(PrayerModel) then) =
      _$PrayerModelCopyWithImpl<$Res, PrayerModel>;
  @useResult
  $Res call({int id, String judul, String latin, String arab, String terjemah});
}

/// @nodoc
class _$PrayerModelCopyWithImpl<$Res, $Val extends PrayerModel>
    implements $PrayerModelCopyWith<$Res> {
  _$PrayerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? judul = null,
    Object? latin = null,
    Object? arab = null,
    Object? terjemah = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      latin: null == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      terjemah: null == terjemah
          ? _value.terjemah
          : terjemah // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerModelImplCopyWith<$Res>
    implements $PrayerModelCopyWith<$Res> {
  factory _$$PrayerModelImplCopyWith(
          _$PrayerModelImpl value, $Res Function(_$PrayerModelImpl) then) =
      __$$PrayerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String judul, String latin, String arab, String terjemah});
}

/// @nodoc
class __$$PrayerModelImplCopyWithImpl<$Res>
    extends _$PrayerModelCopyWithImpl<$Res, _$PrayerModelImpl>
    implements _$$PrayerModelImplCopyWith<$Res> {
  __$$PrayerModelImplCopyWithImpl(
      _$PrayerModelImpl _value, $Res Function(_$PrayerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? judul = null,
    Object? latin = null,
    Object? arab = null,
    Object? terjemah = null,
  }) {
    return _then(_$PrayerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      latin: null == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      terjemah: null == terjemah
          ? _value.terjemah
          : terjemah // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerModelImpl implements _PrayerModel {
  const _$PrayerModelImpl(
      {required this.id,
      required this.judul,
      required this.latin,
      required this.arab,
      required this.terjemah});

  factory _$PrayerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerModelImplFromJson(json);

  @override
  final int id;
  @override
  final String judul;
  @override
  final String latin;
  @override
  final String arab;
  @override
  final String terjemah;

  @override
  String toString() {
    return 'PrayerModel(id: $id, judul: $judul, latin: $latin, arab: $arab, terjemah: $terjemah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.latin, latin) || other.latin == latin) &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.terjemah, terjemah) ||
                other.terjemah == terjemah));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, judul, latin, arab, terjemah);

  /// Create a copy of PrayerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerModelImplCopyWith<_$PrayerModelImpl> get copyWith =>
      __$$PrayerModelImplCopyWithImpl<_$PrayerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerModelImplToJson(
      this,
    );
  }
}

abstract class _PrayerModel implements PrayerModel {
  const factory _PrayerModel(
      {required final int id,
      required final String judul,
      required final String latin,
      required final String arab,
      required final String terjemah}) = _$PrayerModelImpl;

  factory _PrayerModel.fromJson(Map<String, dynamic> json) =
      _$PrayerModelImpl.fromJson;

  @override
  int get id;
  @override
  String get judul;
  @override
  String get latin;
  @override
  String get arab;
  @override
  String get terjemah;

  /// Create a copy of PrayerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerModelImplCopyWith<_$PrayerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
