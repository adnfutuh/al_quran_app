// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'next_ayat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NextAyatModel _$NextAyatModelFromJson(Map<String, dynamic> json) {
  return _NextAyatModel.fromJson(json);
}

/// @nodoc
mixin _$NextAyatModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'namaLatin')
  String get latinName => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlahAyat')
  int get verseCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempatTurun')
  String get placeOfDescent => throw _privateConstructorUsedError;
  @JsonKey(name: 'arti')
  String get meaning => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi')
  String get description => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;

  /// Serializes this NextAyatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NextAyatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NextAyatModelCopyWith<NextAyatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextAyatModelCopyWith<$Res> {
  factory $NextAyatModelCopyWith(
          NextAyatModel value, $Res Function(NextAyatModel) then) =
      _$NextAyatModelCopyWithImpl<$Res, NextAyatModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'nomor') int number,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'namaLatin') String latinName,
      @JsonKey(name: 'jumlahAyat') int verseCount,
      @JsonKey(name: 'tempatTurun') String placeOfDescent,
      @JsonKey(name: 'arti') String meaning,
      @JsonKey(name: 'deskripsi') String description,
      String audio});
}

/// @nodoc
class _$NextAyatModelCopyWithImpl<$Res, $Val extends NextAyatModel>
    implements $NextAyatModelCopyWith<$Res> {
  _$NextAyatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NextAyatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? latinName = null,
    Object? verseCount = null,
    Object? placeOfDescent = null,
    Object? meaning = null,
    Object? description = null,
    Object? audio = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latinName: null == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      verseCount: null == verseCount
          ? _value.verseCount
          : verseCount // ignore: cast_nullable_to_non_nullable
              as int,
      placeOfDescent: null == placeOfDescent
          ? _value.placeOfDescent
          : placeOfDescent // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NextAyatModelImplCopyWith<$Res>
    implements $NextAyatModelCopyWith<$Res> {
  factory _$$NextAyatModelImplCopyWith(
          _$NextAyatModelImpl value, $Res Function(_$NextAyatModelImpl) then) =
      __$$NextAyatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'nomor') int number,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'namaLatin') String latinName,
      @JsonKey(name: 'jumlahAyat') int verseCount,
      @JsonKey(name: 'tempatTurun') String placeOfDescent,
      @JsonKey(name: 'arti') String meaning,
      @JsonKey(name: 'deskripsi') String description,
      String audio});
}

/// @nodoc
class __$$NextAyatModelImplCopyWithImpl<$Res>
    extends _$NextAyatModelCopyWithImpl<$Res, _$NextAyatModelImpl>
    implements _$$NextAyatModelImplCopyWith<$Res> {
  __$$NextAyatModelImplCopyWithImpl(
      _$NextAyatModelImpl _value, $Res Function(_$NextAyatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NextAyatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? latinName = null,
    Object? verseCount = null,
    Object? placeOfDescent = null,
    Object? meaning = null,
    Object? description = null,
    Object? audio = null,
  }) {
    return _then(_$NextAyatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latinName: null == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      verseCount: null == verseCount
          ? _value.verseCount
          : verseCount // ignore: cast_nullable_to_non_nullable
              as int,
      placeOfDescent: null == placeOfDescent
          ? _value.placeOfDescent
          : placeOfDescent // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NextAyatModelImpl implements _NextAyatModel {
  const _$NextAyatModelImpl(
      {required this.id,
      @JsonKey(name: 'nomor') required this.number,
      @JsonKey(name: 'nama') required this.name,
      @JsonKey(name: 'namaLatin') required this.latinName,
      @JsonKey(name: 'jumlahAyat') required this.verseCount,
      @JsonKey(name: 'tempatTurun') required this.placeOfDescent,
      @JsonKey(name: 'arti') required this.meaning,
      @JsonKey(name: 'deskripsi') required this.description,
      required this.audio});

  factory _$NextAyatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextAyatModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'nomor')
  final int number;
  @override
  @JsonKey(name: 'nama')
  final String name;
  @override
  @JsonKey(name: 'namaLatin')
  final String latinName;
  @override
  @JsonKey(name: 'jumlahAyat')
  final int verseCount;
  @override
  @JsonKey(name: 'tempatTurun')
  final String placeOfDescent;
  @override
  @JsonKey(name: 'arti')
  final String meaning;
  @override
  @JsonKey(name: 'deskripsi')
  final String description;
  @override
  final String audio;

  @override
  String toString() {
    return 'NextAyatModel(id: $id, number: $number, name: $name, latinName: $latinName, verseCount: $verseCount, placeOfDescent: $placeOfDescent, meaning: $meaning, description: $description, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextAyatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latinName, latinName) ||
                other.latinName == latinName) &&
            (identical(other.verseCount, verseCount) ||
                other.verseCount == verseCount) &&
            (identical(other.placeOfDescent, placeOfDescent) ||
                other.placeOfDescent == placeOfDescent) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, name, latinName,
      verseCount, placeOfDescent, meaning, description, audio);

  /// Create a copy of NextAyatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NextAyatModelImplCopyWith<_$NextAyatModelImpl> get copyWith =>
      __$$NextAyatModelImplCopyWithImpl<_$NextAyatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextAyatModelImplToJson(
      this,
    );
  }
}

abstract class _NextAyatModel implements NextAyatModel {
  const factory _NextAyatModel(
      {required final int id,
      @JsonKey(name: 'nomor') required final int number,
      @JsonKey(name: 'nama') required final String name,
      @JsonKey(name: 'namaLatin') required final String latinName,
      @JsonKey(name: 'jumlahAyat') required final int verseCount,
      @JsonKey(name: 'tempatTurun') required final String placeOfDescent,
      @JsonKey(name: 'arti') required final String meaning,
      @JsonKey(name: 'deskripsi') required final String description,
      required final String audio}) = _$NextAyatModelImpl;

  factory _NextAyatModel.fromJson(Map<String, dynamic> json) =
      _$NextAyatModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nomor')
  int get number;
  @override
  @JsonKey(name: 'nama')
  String get name;
  @override
  @JsonKey(name: 'namaLatin')
  String get latinName;
  @override
  @JsonKey(name: 'jumlahAyat')
  int get verseCount;
  @override
  @JsonKey(name: 'tempatTurun')
  String get placeOfDescent;
  @override
  @JsonKey(name: 'arti')
  String get meaning;
  @override
  @JsonKey(name: 'deskripsi')
  String get description;
  @override
  String get audio;

  /// Create a copy of NextAyatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NextAyatModelImplCopyWith<_$NextAyatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}