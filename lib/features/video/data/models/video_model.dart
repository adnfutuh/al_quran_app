import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    required String kind,
    required String etag,
    required String nextPageToken,
    required String regionCode,
    required PageInfo pageInfo,
    required List<Item> items,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required String kind,
    required String etag,
    required Id id,
    required Snippet snippet,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Id with _$Id {
  const factory Id({
    required String kind,
    required String videoId,
  }) = _Id;

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}

@freezed
class Snippet with _$Snippet {
  const factory Snippet({
    required DateTime publishedAt,
    required String channelId,
    required String title,
    required String description,
    required Thumbnails thumbnails,
    required String channelTitle,
    required String liveBroadcastContent,
    required DateTime publishTime,
  }) = _Snippet;

  factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);
}

@freezed
class Thumbnails with _$Thumbnails {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Thumbnails({
    @JsonKey(name: 'default') required Default defaultThumbnail,
    required Default medium,
    required Default high,
  }) = _Thumbnails;

  factory Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsFromJson(json);
}

@freezed
class Default with _$Default {
  const factory Default({
    required String url,
    required int width,
    required int height,
  }) = _Default;

  factory Default.fromJson(Map<String, dynamic> json) =>
      _$DefaultFromJson(json);
}

@freezed
class PageInfo with _$PageInfo {
  const factory PageInfo({
    required int totalResults,
    required int resultsPerPage,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
