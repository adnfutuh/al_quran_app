// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  String get nextPageToken => throw _privateConstructorUsedError;
  String get regionCode => throw _privateConstructorUsedError;
  PageInfo get pageInfo => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res, VideoModel>;
  @useResult
  $Res call(
      {String kind,
      String etag,
      String nextPageToken,
      String regionCode,
      PageInfo pageInfo,
      List<Item> items});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res, $Val extends VideoModel>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? nextPageToken = null,
    Object? regionCode = null,
    Object? pageInfo = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageToken: null == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
      regionCode: null == regionCode
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoModelImplCopyWith<$Res>
    implements $VideoModelCopyWith<$Res> {
  factory _$$VideoModelImplCopyWith(
          _$VideoModelImpl value, $Res Function(_$VideoModelImpl) then) =
      __$$VideoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kind,
      String etag,
      String nextPageToken,
      String regionCode,
      PageInfo pageInfo,
      List<Item> items});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$VideoModelImplCopyWithImpl<$Res>
    extends _$VideoModelCopyWithImpl<$Res, _$VideoModelImpl>
    implements _$$VideoModelImplCopyWith<$Res> {
  __$$VideoModelImplCopyWithImpl(
      _$VideoModelImpl _value, $Res Function(_$VideoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? nextPageToken = null,
    Object? regionCode = null,
    Object? pageInfo = null,
    Object? items = null,
  }) {
    return _then(_$VideoModelImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageToken: null == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
      regionCode: null == regionCode
          ? _value.regionCode
          : regionCode // ignore: cast_nullable_to_non_nullable
              as String,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoModelImpl implements _VideoModel {
  const _$VideoModelImpl(
      {required this.kind,
      required this.etag,
      required this.nextPageToken,
      required this.regionCode,
      required this.pageInfo,
      required final List<Item> items})
      : _items = items;

  factory _$VideoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoModelImplFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final String nextPageToken;
  @override
  final String regionCode;
  @override
  final PageInfo pageInfo;
  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'VideoModel(kind: $kind, etag: $etag, nextPageToken: $nextPageToken, regionCode: $regionCode, pageInfo: $pageInfo, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoModelImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken) &&
            (identical(other.regionCode, regionCode) ||
                other.regionCode == regionCode) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kind, etag, nextPageToken,
      regionCode, pageInfo, const DeepCollectionEquality().hash(_items));

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      __$$VideoModelImplCopyWithImpl<_$VideoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoModelImplToJson(
      this,
    );
  }
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel(
      {required final String kind,
      required final String etag,
      required final String nextPageToken,
      required final String regionCode,
      required final PageInfo pageInfo,
      required final List<Item> items}) = _$VideoModelImpl;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$VideoModelImpl.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  String get nextPageToken;
  @override
  String get regionCode;
  @override
  PageInfo get pageInfo;
  @override
  List<Item> get items;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  Id get id => throw _privateConstructorUsedError;
  Snippet get snippet => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({String kind, String etag, Id id, Snippet snippet});

  $IdCopyWith<$Res> get id;
  $SnippetCopyWith<$Res> get snippet;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? id = null,
    Object? snippet = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet,
    ) as $Val);
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdCopyWith<$Res> get id {
    return $IdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnippetCopyWith<$Res> get snippet {
    return $SnippetCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, String etag, Id id, Snippet snippet});

  @override
  $IdCopyWith<$Res> get id;
  @override
  $SnippetCopyWith<$Res> get snippet;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? id = null,
    Object? snippet = null,
  }) {
    return _then(_$ItemImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {required this.kind,
      required this.etag,
      required this.id,
      required this.snippet});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final Id id;
  @override
  final Snippet snippet;

  @override
  String toString() {
    return 'Item(kind: $kind, etag: $etag, id: $id, snippet: $snippet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.snippet, snippet) || other.snippet == snippet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kind, etag, id, snippet);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String kind,
      required final String etag,
      required final Id id,
      required final Snippet snippet}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  Id get id;
  @override
  Snippet get snippet;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Id _$IdFromJson(Map<String, dynamic> json) {
  return _Id.fromJson(json);
}

/// @nodoc
mixin _$Id {
  String get kind => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;

  /// Serializes this Id to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdCopyWith<Id> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdCopyWith<$Res> {
  factory $IdCopyWith(Id value, $Res Function(Id) then) =
      _$IdCopyWithImpl<$Res, Id>;
  @useResult
  $Res call({String kind, String videoId});
}

/// @nodoc
class _$IdCopyWithImpl<$Res, $Val extends Id> implements $IdCopyWith<$Res> {
  _$IdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? videoId = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdImplCopyWith<$Res> implements $IdCopyWith<$Res> {
  factory _$$IdImplCopyWith(_$IdImpl value, $Res Function(_$IdImpl) then) =
      __$$IdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, String videoId});
}

/// @nodoc
class __$$IdImplCopyWithImpl<$Res> extends _$IdCopyWithImpl<$Res, _$IdImpl>
    implements _$$IdImplCopyWith<$Res> {
  __$$IdImplCopyWithImpl(_$IdImpl _value, $Res Function(_$IdImpl) _then)
      : super(_value, _then);

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? videoId = null,
  }) {
    return _then(_$IdImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdImpl implements _Id {
  const _$IdImpl({required this.kind, required this.videoId});

  factory _$IdImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdImplFromJson(json);

  @override
  final String kind;
  @override
  final String videoId;

  @override
  String toString() {
    return 'Id(kind: $kind, videoId: $videoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kind, videoId);

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdImplCopyWith<_$IdImpl> get copyWith =>
      __$$IdImplCopyWithImpl<_$IdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdImplToJson(
      this,
    );
  }
}

abstract class _Id implements Id {
  const factory _Id(
      {required final String kind, required final String videoId}) = _$IdImpl;

  factory _Id.fromJson(Map<String, dynamic> json) = _$IdImpl.fromJson;

  @override
  String get kind;
  @override
  String get videoId;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdImplCopyWith<_$IdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return _Snippet.fromJson(json);
}

/// @nodoc
mixin _$Snippet {
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Thumbnails get thumbnails => throw _privateConstructorUsedError;
  String get channelTitle => throw _privateConstructorUsedError;
  String get liveBroadcastContent => throw _privateConstructorUsedError;
  DateTime get publishTime => throw _privateConstructorUsedError;

  /// Serializes this Snippet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Snippet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnippetCopyWith<Snippet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetCopyWith<$Res> {
  factory $SnippetCopyWith(Snippet value, $Res Function(Snippet) then) =
      _$SnippetCopyWithImpl<$Res, Snippet>;
  @useResult
  $Res call(
      {DateTime publishedAt,
      String channelId,
      String title,
      String description,
      Thumbnails thumbnails,
      String channelTitle,
      String liveBroadcastContent,
      DateTime publishTime});

  $ThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class _$SnippetCopyWithImpl<$Res, $Val extends Snippet>
    implements $SnippetCopyWith<$Res> {
  _$SnippetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Snippet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publishedAt = null,
    Object? channelId = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnails = null,
    Object? channelTitle = null,
    Object? liveBroadcastContent = null,
    Object? publishTime = null,
  }) {
    return _then(_value.copyWith(
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails,
      channelTitle: null == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      liveBroadcastContent: null == liveBroadcastContent
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String,
      publishTime: null == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Snippet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailsCopyWith<$Res> get thumbnails {
    return $ThumbnailsCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnippetImplCopyWith<$Res> implements $SnippetCopyWith<$Res> {
  factory _$$SnippetImplCopyWith(
          _$SnippetImpl value, $Res Function(_$SnippetImpl) then) =
      __$$SnippetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime publishedAt,
      String channelId,
      String title,
      String description,
      Thumbnails thumbnails,
      String channelTitle,
      String liveBroadcastContent,
      DateTime publishTime});

  @override
  $ThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class __$$SnippetImplCopyWithImpl<$Res>
    extends _$SnippetCopyWithImpl<$Res, _$SnippetImpl>
    implements _$$SnippetImplCopyWith<$Res> {
  __$$SnippetImplCopyWithImpl(
      _$SnippetImpl _value, $Res Function(_$SnippetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Snippet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publishedAt = null,
    Object? channelId = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnails = null,
    Object? channelTitle = null,
    Object? liveBroadcastContent = null,
    Object? publishTime = null,
  }) {
    return _then(_$SnippetImpl(
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails,
      channelTitle: null == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      liveBroadcastContent: null == liveBroadcastContent
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String,
      publishTime: null == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnippetImpl implements _Snippet {
  const _$SnippetImpl(
      {required this.publishedAt,
      required this.channelId,
      required this.title,
      required this.description,
      required this.thumbnails,
      required this.channelTitle,
      required this.liveBroadcastContent,
      required this.publishTime});

  factory _$SnippetImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnippetImplFromJson(json);

  @override
  final DateTime publishedAt;
  @override
  final String channelId;
  @override
  final String title;
  @override
  final String description;
  @override
  final Thumbnails thumbnails;
  @override
  final String channelTitle;
  @override
  final String liveBroadcastContent;
  @override
  final DateTime publishTime;

  @override
  String toString() {
    return 'Snippet(publishedAt: $publishedAt, channelId: $channelId, title: $title, description: $description, thumbnails: $thumbnails, channelTitle: $channelTitle, liveBroadcastContent: $liveBroadcastContent, publishTime: $publishTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnippetImpl &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle) &&
            (identical(other.liveBroadcastContent, liveBroadcastContent) ||
                other.liveBroadcastContent == liveBroadcastContent) &&
            (identical(other.publishTime, publishTime) ||
                other.publishTime == publishTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publishedAt, channelId, title,
      description, thumbnails, channelTitle, liveBroadcastContent, publishTime);

  /// Create a copy of Snippet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnippetImplCopyWith<_$SnippetImpl> get copyWith =>
      __$$SnippetImplCopyWithImpl<_$SnippetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnippetImplToJson(
      this,
    );
  }
}

abstract class _Snippet implements Snippet {
  const factory _Snippet(
      {required final DateTime publishedAt,
      required final String channelId,
      required final String title,
      required final String description,
      required final Thumbnails thumbnails,
      required final String channelTitle,
      required final String liveBroadcastContent,
      required final DateTime publishTime}) = _$SnippetImpl;

  factory _Snippet.fromJson(Map<String, dynamic> json) = _$SnippetImpl.fromJson;

  @override
  DateTime get publishedAt;
  @override
  String get channelId;
  @override
  String get title;
  @override
  String get description;
  @override
  Thumbnails get thumbnails;
  @override
  String get channelTitle;
  @override
  String get liveBroadcastContent;
  @override
  DateTime get publishTime;

  /// Create a copy of Snippet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnippetImplCopyWith<_$SnippetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) {
  return _Thumbnails.fromJson(json);
}

/// @nodoc
mixin _$Thumbnails {
  @JsonKey(name: 'default')
  Default get defaultThumbnail => throw _privateConstructorUsedError;
  Default get medium => throw _privateConstructorUsedError;
  Default get high => throw _privateConstructorUsedError;

  /// Serializes this Thumbnails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Thumbnails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThumbnailsCopyWith<Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsCopyWith<$Res> {
  factory $ThumbnailsCopyWith(
          Thumbnails value, $Res Function(Thumbnails) then) =
      _$ThumbnailsCopyWithImpl<$Res, Thumbnails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'default') Default defaultThumbnail,
      Default medium,
      Default high});

  $DefaultCopyWith<$Res> get defaultThumbnail;
  $DefaultCopyWith<$Res> get medium;
  $DefaultCopyWith<$Res> get high;
}

/// @nodoc
class _$ThumbnailsCopyWithImpl<$Res, $Val extends Thumbnails>
    implements $ThumbnailsCopyWith<$Res> {
  _$ThumbnailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Thumbnails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultThumbnail = null,
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_value.copyWith(
      defaultThumbnail: null == defaultThumbnail
          ? _value.defaultThumbnail
          : defaultThumbnail // ignore: cast_nullable_to_non_nullable
              as Default,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default,
    ) as $Val);
  }

  /// Create a copy of Thumbnails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DefaultCopyWith<$Res> get defaultThumbnail {
    return $DefaultCopyWith<$Res>(_value.defaultThumbnail, (value) {
      return _then(_value.copyWith(defaultThumbnail: value) as $Val);
    });
  }

  /// Create a copy of Thumbnails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DefaultCopyWith<$Res> get medium {
    return $DefaultCopyWith<$Res>(_value.medium, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  /// Create a copy of Thumbnails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DefaultCopyWith<$Res> get high {
    return $DefaultCopyWith<$Res>(_value.high, (value) {
      return _then(_value.copyWith(high: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThumbnailsImplCopyWith<$Res>
    implements $ThumbnailsCopyWith<$Res> {
  factory _$$ThumbnailsImplCopyWith(
          _$ThumbnailsImpl value, $Res Function(_$ThumbnailsImpl) then) =
      __$$ThumbnailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'default') Default defaultThumbnail,
      Default medium,
      Default high});

  @override
  $DefaultCopyWith<$Res> get defaultThumbnail;
  @override
  $DefaultCopyWith<$Res> get medium;
  @override
  $DefaultCopyWith<$Res> get high;
}

/// @nodoc
class __$$ThumbnailsImplCopyWithImpl<$Res>
    extends _$ThumbnailsCopyWithImpl<$Res, _$ThumbnailsImpl>
    implements _$$ThumbnailsImplCopyWith<$Res> {
  __$$ThumbnailsImplCopyWithImpl(
      _$ThumbnailsImpl _value, $Res Function(_$ThumbnailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Thumbnails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultThumbnail = null,
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_$ThumbnailsImpl(
      defaultThumbnail: null == defaultThumbnail
          ? _value.defaultThumbnail
          : defaultThumbnail // ignore: cast_nullable_to_non_nullable
              as Default,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ThumbnailsImpl implements _Thumbnails {
  const _$ThumbnailsImpl(
      {@JsonKey(name: 'default') required this.defaultThumbnail,
      required this.medium,
      required this.high});

  factory _$ThumbnailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailsImplFromJson(json);

  @override
  @JsonKey(name: 'default')
  final Default defaultThumbnail;
  @override
  final Default medium;
  @override
  final Default high;

  @override
  String toString() {
    return 'Thumbnails(defaultThumbnail: $defaultThumbnail, medium: $medium, high: $high)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailsImpl &&
            (identical(other.defaultThumbnail, defaultThumbnail) ||
                other.defaultThumbnail == defaultThumbnail) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.high, high) || other.high == high));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, defaultThumbnail, medium, high);

  /// Create a copy of Thumbnails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailsImplCopyWith<_$ThumbnailsImpl> get copyWith =>
      __$$ThumbnailsImplCopyWithImpl<_$ThumbnailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailsImplToJson(
      this,
    );
  }
}

abstract class _Thumbnails implements Thumbnails {
  const factory _Thumbnails(
      {@JsonKey(name: 'default') required final Default defaultThumbnail,
      required final Default medium,
      required final Default high}) = _$ThumbnailsImpl;

  factory _Thumbnails.fromJson(Map<String, dynamic> json) =
      _$ThumbnailsImpl.fromJson;

  @override
  @JsonKey(name: 'default')
  Default get defaultThumbnail;
  @override
  Default get medium;
  @override
  Default get high;

  /// Create a copy of Thumbnails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThumbnailsImplCopyWith<_$ThumbnailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Default _$DefaultFromJson(Map<String, dynamic> json) {
  return _Default.fromJson(json);
}

/// @nodoc
mixin _$Default {
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  /// Serializes this Default to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Default
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultCopyWith<Default> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultCopyWith<$Res> {
  factory $DefaultCopyWith(Default value, $Res Function(Default) then) =
      _$DefaultCopyWithImpl<$Res, Default>;
  @useResult
  $Res call({String url, int width, int height});
}

/// @nodoc
class _$DefaultCopyWithImpl<$Res, $Val extends Default>
    implements $DefaultCopyWith<$Res> {
  _$DefaultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Default
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultImplCopyWith<$Res> implements $DefaultCopyWith<$Res> {
  factory _$$DefaultImplCopyWith(
          _$DefaultImpl value, $Res Function(_$DefaultImpl) then) =
      __$$DefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int width, int height});
}

/// @nodoc
class __$$DefaultImplCopyWithImpl<$Res>
    extends _$DefaultCopyWithImpl<$Res, _$DefaultImpl>
    implements _$$DefaultImplCopyWith<$Res> {
  __$$DefaultImplCopyWithImpl(
      _$DefaultImpl _value, $Res Function(_$DefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Default
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$DefaultImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultImpl implements _Default {
  const _$DefaultImpl(
      {required this.url, required this.width, required this.height});

  factory _$DefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultImplFromJson(json);

  @override
  final String url;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'Default(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, width, height);

  /// Create a copy of Default
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultImplCopyWith<_$DefaultImpl> get copyWith =>
      __$$DefaultImplCopyWithImpl<_$DefaultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultImplToJson(
      this,
    );
  }
}

abstract class _Default implements Default {
  const factory _Default(
      {required final String url,
      required final int width,
      required final int height}) = _$DefaultImpl;

  factory _Default.fromJson(Map<String, dynamic> json) = _$DefaultImpl.fromJson;

  @override
  String get url;
  @override
  int get width;
  @override
  int get height;

  /// Create a copy of Default
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultImplCopyWith<_$DefaultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return _PageInfo.fromJson(json);
}

/// @nodoc
mixin _$PageInfo {
  int get totalResults => throw _privateConstructorUsedError;
  int get resultsPerPage => throw _privateConstructorUsedError;

  /// Serializes this PageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageInfoCopyWith<PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res, PageInfo>;
  @useResult
  $Res call({int totalResults, int resultsPerPage});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res, $Val extends PageInfo>
    implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? resultsPerPage = null,
  }) {
    return _then(_value.copyWith(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      resultsPerPage: null == resultsPerPage
          ? _value.resultsPerPage
          : resultsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageInfoImplCopyWith<$Res>
    implements $PageInfoCopyWith<$Res> {
  factory _$$PageInfoImplCopyWith(
          _$PageInfoImpl value, $Res Function(_$PageInfoImpl) then) =
      __$$PageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalResults, int resultsPerPage});
}

/// @nodoc
class __$$PageInfoImplCopyWithImpl<$Res>
    extends _$PageInfoCopyWithImpl<$Res, _$PageInfoImpl>
    implements _$$PageInfoImplCopyWith<$Res> {
  __$$PageInfoImplCopyWithImpl(
      _$PageInfoImpl _value, $Res Function(_$PageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? resultsPerPage = null,
  }) {
    return _then(_$PageInfoImpl(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      resultsPerPage: null == resultsPerPage
          ? _value.resultsPerPage
          : resultsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageInfoImpl implements _PageInfo {
  const _$PageInfoImpl(
      {required this.totalResults, required this.resultsPerPage});

  factory _$PageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageInfoImplFromJson(json);

  @override
  final int totalResults;
  @override
  final int resultsPerPage;

  @override
  String toString() {
    return 'PageInfo(totalResults: $totalResults, resultsPerPage: $resultsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageInfoImpl &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.resultsPerPage, resultsPerPage) ||
                other.resultsPerPage == resultsPerPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults, resultsPerPage);

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageInfoImplCopyWith<_$PageInfoImpl> get copyWith =>
      __$$PageInfoImplCopyWithImpl<_$PageInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageInfoImplToJson(
      this,
    );
  }
}

abstract class _PageInfo implements PageInfo {
  const factory _PageInfo(
      {required final int totalResults,
      required final int resultsPerPage}) = _$PageInfoImpl;

  factory _PageInfo.fromJson(Map<String, dynamic> json) =
      _$PageInfoImpl.fromJson;

  @override
  int get totalResults;
  @override
  int get resultsPerPage;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageInfoImplCopyWith<_$PageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
