// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AyatModel _$AyatModelFromJson(Map<String, dynamic> json) {
  return _AyatModel.fromJson(json);
}

/// @nodoc
mixin _$AyatModel {
  int get id => throw _privateConstructorUsedError;
  int get surah => throw _privateConstructorUsedError;
  int get nomor => throw _privateConstructorUsedError;
  String get ar => throw _privateConstructorUsedError;
  String get tr => throw _privateConstructorUsedError;
  String get idn => throw _privateConstructorUsedError;

  /// Serializes this AyatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyatModelCopyWith<AyatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyatModelCopyWith<$Res> {
  factory $AyatModelCopyWith(AyatModel value, $Res Function(AyatModel) then) =
      _$AyatModelCopyWithImpl<$Res, AyatModel>;
  @useResult
  $Res call({int id, int surah, int nomor, String ar, String tr, String idn});
}

/// @nodoc
class _$AyatModelCopyWithImpl<$Res, $Val extends AyatModel>
    implements $AyatModelCopyWith<$Res> {
  _$AyatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? nomor = null,
    Object? ar = null,
    Object? tr = null,
    Object? idn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
      idn: null == idn
          ? _value.idn
          : idn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyatModelImplCopyWith<$Res>
    implements $AyatModelCopyWith<$Res> {
  factory _$$AyatModelImplCopyWith(
          _$AyatModelImpl value, $Res Function(_$AyatModelImpl) then) =
      __$$AyatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int surah, int nomor, String ar, String tr, String idn});
}

/// @nodoc
class __$$AyatModelImplCopyWithImpl<$Res>
    extends _$AyatModelCopyWithImpl<$Res, _$AyatModelImpl>
    implements _$$AyatModelImplCopyWith<$Res> {
  __$$AyatModelImplCopyWithImpl(
      _$AyatModelImpl _value, $Res Function(_$AyatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? nomor = null,
    Object? ar = null,
    Object? tr = null,
    Object? idn = null,
  }) {
    return _then(_$AyatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
      idn: null == idn
          ? _value.idn
          : idn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyatModelImpl implements _AyatModel {
  const _$AyatModelImpl(
      {required this.id,
      required this.surah,
      required this.nomor,
      required this.ar,
      required this.tr,
      required this.idn});

  factory _$AyatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyatModelImplFromJson(json);

  @override
  final int id;
  @override
  final int surah;
  @override
  final int nomor;
  @override
  final String ar;
  @override
  final String tr;
  @override
  final String idn;

  @override
  String toString() {
    return 'AyatModel(id: $id, surah: $surah, nomor: $nomor, ar: $ar, tr: $tr, idn: $idn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.ar, ar) || other.ar == ar) &&
            (identical(other.tr, tr) || other.tr == tr) &&
            (identical(other.idn, idn) || other.idn == idn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, surah, nomor, ar, tr, idn);

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyatModelImplCopyWith<_$AyatModelImpl> get copyWith =>
      __$$AyatModelImplCopyWithImpl<_$AyatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyatModelImplToJson(
      this,
    );
  }
}

abstract class _AyatModel implements AyatModel {
  const factory _AyatModel(
      {required final int id,
      required final int surah,
      required final int nomor,
      required final String ar,
      required final String tr,
      required final String idn}) = _$AyatModelImpl;

  factory _AyatModel.fromJson(Map<String, dynamic> json) =
      _$AyatModelImpl.fromJson;

  @override
  int get id;
  @override
  int get surah;
  @override
  int get nomor;
  @override
  String get ar;
  @override
  String get tr;
  @override
  String get idn;

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyatModelImplCopyWith<_$AyatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
