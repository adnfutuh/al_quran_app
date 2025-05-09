// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PrayerModel> prayerList) successList,
    required TResult Function(PrayerModel prayerDetail) successDetail,
    required TResult Function(AppException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PrayerModel> prayerList)? successList,
    TResult? Function(PrayerModel prayerDetail)? successDetail,
    TResult? Function(AppException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PrayerModel> prayerList)? successList,
    TResult Function(PrayerModel prayerDetail)? successDetail,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrayerInitial value) initial,
    required TResult Function(_PrayerLoading value) loading,
    required TResult Function(_PrayerListSuccess value) successList,
    required TResult Function(_PrayerDetailSuccess value) successDetail,
    required TResult Function(_PrayerError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrayerInitial value)? initial,
    TResult? Function(_PrayerLoading value)? loading,
    TResult? Function(_PrayerListSuccess value)? successList,
    TResult? Function(_PrayerDetailSuccess value)? successDetail,
    TResult? Function(_PrayerError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrayerInitial value)? initial,
    TResult Function(_PrayerLoading value)? loading,
    TResult Function(_PrayerListSuccess value)? successList,
    TResult Function(_PrayerDetailSuccess value)? successDetail,
    TResult Function(_PrayerError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerStateCopyWith<$Res> {
  factory $PrayerStateCopyWith(
          PrayerState value, $Res Function(PrayerState) then) =
      _$PrayerStateCopyWithImpl<$Res, PrayerState>;
}

/// @nodoc
class _$PrayerStateCopyWithImpl<$Res, $Val extends PrayerState>
    implements $PrayerStateCopyWith<$Res> {
  _$PrayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PrayerInitialImplCopyWith<$Res> {
  factory _$$PrayerInitialImplCopyWith(
          _$PrayerInitialImpl value, $Res Function(_$PrayerInitialImpl) then) =
      __$$PrayerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrayerInitialImplCopyWithImpl<$Res>
    extends _$PrayerStateCopyWithImpl<$Res, _$PrayerInitialImpl>
    implements _$$PrayerInitialImplCopyWith<$Res> {
  __$$PrayerInitialImplCopyWithImpl(
      _$PrayerInitialImpl _value, $Res Function(_$PrayerInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PrayerInitialImpl implements _PrayerInitial {
  const _$PrayerInitialImpl();

  @override
  String toString() {
    return 'PrayerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrayerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PrayerModel> prayerList) successList,
    required TResult Function(PrayerModel prayerDetail) successDetail,
    required TResult Function(AppException error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PrayerModel> prayerList)? successList,
    TResult? Function(PrayerModel prayerDetail)? successDetail,
    TResult? Function(AppException error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PrayerModel> prayerList)? successList,
    TResult Function(PrayerModel prayerDetail)? successDetail,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrayerInitial value) initial,
    required TResult Function(_PrayerLoading value) loading,
    required TResult Function(_PrayerListSuccess value) successList,
    required TResult Function(_PrayerDetailSuccess value) successDetail,
    required TResult Function(_PrayerError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrayerInitial value)? initial,
    TResult? Function(_PrayerLoading value)? loading,
    TResult? Function(_PrayerListSuccess value)? successList,
    TResult? Function(_PrayerDetailSuccess value)? successDetail,
    TResult? Function(_PrayerError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrayerInitial value)? initial,
    TResult Function(_PrayerLoading value)? loading,
    TResult Function(_PrayerListSuccess value)? successList,
    TResult Function(_PrayerDetailSuccess value)? successDetail,
    TResult Function(_PrayerError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PrayerInitial implements PrayerState {
  const factory _PrayerInitial() = _$PrayerInitialImpl;
}

/// @nodoc
abstract class _$$PrayerLoadingImplCopyWith<$Res> {
  factory _$$PrayerLoadingImplCopyWith(
          _$PrayerLoadingImpl value, $Res Function(_$PrayerLoadingImpl) then) =
      __$$PrayerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrayerLoadingImplCopyWithImpl<$Res>
    extends _$PrayerStateCopyWithImpl<$Res, _$PrayerLoadingImpl>
    implements _$$PrayerLoadingImplCopyWith<$Res> {
  __$$PrayerLoadingImplCopyWithImpl(
      _$PrayerLoadingImpl _value, $Res Function(_$PrayerLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PrayerLoadingImpl implements _PrayerLoading {
  const _$PrayerLoadingImpl();

  @override
  String toString() {
    return 'PrayerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrayerLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PrayerModel> prayerList) successList,
    required TResult Function(PrayerModel prayerDetail) successDetail,
    required TResult Function(AppException error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PrayerModel> prayerList)? successList,
    TResult? Function(PrayerModel prayerDetail)? successDetail,
    TResult? Function(AppException error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PrayerModel> prayerList)? successList,
    TResult Function(PrayerModel prayerDetail)? successDetail,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrayerInitial value) initial,
    required TResult Function(_PrayerLoading value) loading,
    required TResult Function(_PrayerListSuccess value) successList,
    required TResult Function(_PrayerDetailSuccess value) successDetail,
    required TResult Function(_PrayerError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrayerInitial value)? initial,
    TResult? Function(_PrayerLoading value)? loading,
    TResult? Function(_PrayerListSuccess value)? successList,
    TResult? Function(_PrayerDetailSuccess value)? successDetail,
    TResult? Function(_PrayerError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrayerInitial value)? initial,
    TResult Function(_PrayerLoading value)? loading,
    TResult Function(_PrayerListSuccess value)? successList,
    TResult Function(_PrayerDetailSuccess value)? successDetail,
    TResult Function(_PrayerError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PrayerLoading implements PrayerState {
  const factory _PrayerLoading() = _$PrayerLoadingImpl;
}

/// @nodoc
abstract class _$$PrayerListSuccessImplCopyWith<$Res> {
  factory _$$PrayerListSuccessImplCopyWith(_$PrayerListSuccessImpl value,
          $Res Function(_$PrayerListSuccessImpl) then) =
      __$$PrayerListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PrayerModel> prayerList});
}

/// @nodoc
class __$$PrayerListSuccessImplCopyWithImpl<$Res>
    extends _$PrayerStateCopyWithImpl<$Res, _$PrayerListSuccessImpl>
    implements _$$PrayerListSuccessImplCopyWith<$Res> {
  __$$PrayerListSuccessImplCopyWithImpl(_$PrayerListSuccessImpl _value,
      $Res Function(_$PrayerListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prayerList = null,
  }) {
    return _then(_$PrayerListSuccessImpl(
      null == prayerList
          ? _value._prayerList
          : prayerList // ignore: cast_nullable_to_non_nullable
              as List<PrayerModel>,
    ));
  }
}

/// @nodoc

class _$PrayerListSuccessImpl implements _PrayerListSuccess {
  const _$PrayerListSuccessImpl(final List<PrayerModel> prayerList)
      : _prayerList = prayerList;

  final List<PrayerModel> _prayerList;
  @override
  List<PrayerModel> get prayerList {
    if (_prayerList is EqualUnmodifiableListView) return _prayerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prayerList);
  }

  @override
  String toString() {
    return 'PrayerState.successList(prayerList: $prayerList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._prayerList, _prayerList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_prayerList));

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerListSuccessImplCopyWith<_$PrayerListSuccessImpl> get copyWith =>
      __$$PrayerListSuccessImplCopyWithImpl<_$PrayerListSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PrayerModel> prayerList) successList,
    required TResult Function(PrayerModel prayerDetail) successDetail,
    required TResult Function(AppException error) error,
  }) {
    return successList(prayerList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PrayerModel> prayerList)? successList,
    TResult? Function(PrayerModel prayerDetail)? successDetail,
    TResult? Function(AppException error)? error,
  }) {
    return successList?.call(prayerList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PrayerModel> prayerList)? successList,
    TResult Function(PrayerModel prayerDetail)? successDetail,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(prayerList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrayerInitial value) initial,
    required TResult Function(_PrayerLoading value) loading,
    required TResult Function(_PrayerListSuccess value) successList,
    required TResult Function(_PrayerDetailSuccess value) successDetail,
    required TResult Function(_PrayerError value) error,
  }) {
    return successList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrayerInitial value)? initial,
    TResult? Function(_PrayerLoading value)? loading,
    TResult? Function(_PrayerListSuccess value)? successList,
    TResult? Function(_PrayerDetailSuccess value)? successDetail,
    TResult? Function(_PrayerError value)? error,
  }) {
    return successList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrayerInitial value)? initial,
    TResult Function(_PrayerLoading value)? loading,
    TResult Function(_PrayerListSuccess value)? successList,
    TResult Function(_PrayerDetailSuccess value)? successDetail,
    TResult Function(_PrayerError value)? error,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(this);
    }
    return orElse();
  }
}

abstract class _PrayerListSuccess implements PrayerState {
  const factory _PrayerListSuccess(final List<PrayerModel> prayerList) =
      _$PrayerListSuccessImpl;

  List<PrayerModel> get prayerList;

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerListSuccessImplCopyWith<_$PrayerListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrayerDetailSuccessImplCopyWith<$Res> {
  factory _$$PrayerDetailSuccessImplCopyWith(_$PrayerDetailSuccessImpl value,
          $Res Function(_$PrayerDetailSuccessImpl) then) =
      __$$PrayerDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PrayerModel prayerDetail});

  $PrayerModelCopyWith<$Res> get prayerDetail;
}

/// @nodoc
class __$$PrayerDetailSuccessImplCopyWithImpl<$Res>
    extends _$PrayerStateCopyWithImpl<$Res, _$PrayerDetailSuccessImpl>
    implements _$$PrayerDetailSuccessImplCopyWith<$Res> {
  __$$PrayerDetailSuccessImplCopyWithImpl(_$PrayerDetailSuccessImpl _value,
      $Res Function(_$PrayerDetailSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prayerDetail = null,
  }) {
    return _then(_$PrayerDetailSuccessImpl(
      null == prayerDetail
          ? _value.prayerDetail
          : prayerDetail // ignore: cast_nullable_to_non_nullable
              as PrayerModel,
    ));
  }

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrayerModelCopyWith<$Res> get prayerDetail {
    return $PrayerModelCopyWith<$Res>(_value.prayerDetail, (value) {
      return _then(_value.copyWith(prayerDetail: value));
    });
  }
}

/// @nodoc

class _$PrayerDetailSuccessImpl implements _PrayerDetailSuccess {
  const _$PrayerDetailSuccessImpl(this.prayerDetail);

  @override
  final PrayerModel prayerDetail;

  @override
  String toString() {
    return 'PrayerState.successDetail(prayerDetail: $prayerDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerDetailSuccessImpl &&
            (identical(other.prayerDetail, prayerDetail) ||
                other.prayerDetail == prayerDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prayerDetail);

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerDetailSuccessImplCopyWith<_$PrayerDetailSuccessImpl> get copyWith =>
      __$$PrayerDetailSuccessImplCopyWithImpl<_$PrayerDetailSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PrayerModel> prayerList) successList,
    required TResult Function(PrayerModel prayerDetail) successDetail,
    required TResult Function(AppException error) error,
  }) {
    return successDetail(prayerDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PrayerModel> prayerList)? successList,
    TResult? Function(PrayerModel prayerDetail)? successDetail,
    TResult? Function(AppException error)? error,
  }) {
    return successDetail?.call(prayerDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PrayerModel> prayerList)? successList,
    TResult Function(PrayerModel prayerDetail)? successDetail,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (successDetail != null) {
      return successDetail(prayerDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrayerInitial value) initial,
    required TResult Function(_PrayerLoading value) loading,
    required TResult Function(_PrayerListSuccess value) successList,
    required TResult Function(_PrayerDetailSuccess value) successDetail,
    required TResult Function(_PrayerError value) error,
  }) {
    return successDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrayerInitial value)? initial,
    TResult? Function(_PrayerLoading value)? loading,
    TResult? Function(_PrayerListSuccess value)? successList,
    TResult? Function(_PrayerDetailSuccess value)? successDetail,
    TResult? Function(_PrayerError value)? error,
  }) {
    return successDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrayerInitial value)? initial,
    TResult Function(_PrayerLoading value)? loading,
    TResult Function(_PrayerListSuccess value)? successList,
    TResult Function(_PrayerDetailSuccess value)? successDetail,
    TResult Function(_PrayerError value)? error,
    required TResult orElse(),
  }) {
    if (successDetail != null) {
      return successDetail(this);
    }
    return orElse();
  }
}

abstract class _PrayerDetailSuccess implements PrayerState {
  const factory _PrayerDetailSuccess(final PrayerModel prayerDetail) =
      _$PrayerDetailSuccessImpl;

  PrayerModel get prayerDetail;

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerDetailSuccessImplCopyWith<_$PrayerDetailSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrayerErrorImplCopyWith<$Res> {
  factory _$$PrayerErrorImplCopyWith(
          _$PrayerErrorImpl value, $Res Function(_$PrayerErrorImpl) then) =
      __$$PrayerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException error});
}

/// @nodoc
class __$$PrayerErrorImplCopyWithImpl<$Res>
    extends _$PrayerStateCopyWithImpl<$Res, _$PrayerErrorImpl>
    implements _$$PrayerErrorImplCopyWith<$Res> {
  __$$PrayerErrorImplCopyWithImpl(
      _$PrayerErrorImpl _value, $Res Function(_$PrayerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PrayerErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$PrayerErrorImpl implements _PrayerError {
  const _$PrayerErrorImpl(this.error);

  @override
  final AppException error;

  @override
  String toString() {
    return 'PrayerState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerErrorImplCopyWith<_$PrayerErrorImpl> get copyWith =>
      __$$PrayerErrorImplCopyWithImpl<_$PrayerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PrayerModel> prayerList) successList,
    required TResult Function(PrayerModel prayerDetail) successDetail,
    required TResult Function(AppException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PrayerModel> prayerList)? successList,
    TResult? Function(PrayerModel prayerDetail)? successDetail,
    TResult? Function(AppException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PrayerModel> prayerList)? successList,
    TResult Function(PrayerModel prayerDetail)? successDetail,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrayerInitial value) initial,
    required TResult Function(_PrayerLoading value) loading,
    required TResult Function(_PrayerListSuccess value) successList,
    required TResult Function(_PrayerDetailSuccess value) successDetail,
    required TResult Function(_PrayerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrayerInitial value)? initial,
    TResult? Function(_PrayerLoading value)? loading,
    TResult? Function(_PrayerListSuccess value)? successList,
    TResult? Function(_PrayerDetailSuccess value)? successDetail,
    TResult? Function(_PrayerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrayerInitial value)? initial,
    TResult Function(_PrayerLoading value)? loading,
    TResult Function(_PrayerListSuccess value)? successList,
    TResult Function(_PrayerDetailSuccess value)? successDetail,
    TResult Function(_PrayerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PrayerError implements PrayerState {
  const factory _PrayerError(final AppException error) = _$PrayerErrorImpl;

  AppException get error;

  /// Create a copy of PrayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerErrorImplCopyWith<_$PrayerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
