// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoModelImpl _$$VideoModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoModelImpl(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      nextPageToken: json['nextPageToken'] as String,
      regionCode: json['regionCode'] as String,
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoModelImplToJson(_$VideoModelImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'nextPageToken': instance.nextPageToken,
      'regionCode': instance.regionCode,
      'pageInfo': instance.pageInfo,
      'items': instance.items,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      id: Id.fromJson(json['id'] as Map<String, dynamic>),
      snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet,
    };

_$IdImpl _$$IdImplFromJson(Map<String, dynamic> json) => _$IdImpl(
      kind: json['kind'] as String,
      videoId: json['videoId'] as String,
    );

Map<String, dynamic> _$$IdImplToJson(_$IdImpl instance) => <String, dynamic>{
      'kind': instance.kind,
      'videoId': instance.videoId,
    };

_$SnippetImpl _$$SnippetImplFromJson(Map<String, dynamic> json) =>
    _$SnippetImpl(
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      channelId: json['channelId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String,
      liveBroadcastContent: json['liveBroadcastContent'] as String,
      publishTime: DateTime.parse(json['publishTime'] as String),
    );

Map<String, dynamic> _$$SnippetImplToJson(_$SnippetImpl instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt.toIso8601String(),
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'liveBroadcastContent': instance.liveBroadcastContent,
      'publishTime': instance.publishTime.toIso8601String(),
    };

_$ThumbnailsImpl _$$ThumbnailsImplFromJson(Map<String, dynamic> json) =>
    _$ThumbnailsImpl(
      defaultThumbnail:
          Default.fromJson(json['default'] as Map<String, dynamic>),
      medium: Default.fromJson(json['medium'] as Map<String, dynamic>),
      high: Default.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ThumbnailsImplToJson(_$ThumbnailsImpl instance) =>
    <String, dynamic>{
      'default': instance.defaultThumbnail,
      'medium': instance.medium,
      'high': instance.high,
    };

_$DefaultImpl _$$DefaultImplFromJson(Map<String, dynamic> json) =>
    _$DefaultImpl(
      url: json['url'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$$DefaultImplToJson(_$DefaultImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

_$PageInfoImpl _$$PageInfoImplFromJson(Map<String, dynamic> json) =>
    _$PageInfoImpl(
      totalResults: (json['totalResults'] as num).toInt(),
      resultsPerPage: (json['resultsPerPage'] as num).toInt(),
    );

Map<String, dynamic> _$$PageInfoImplToJson(_$PageInfoImpl instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'resultsPerPage': instance.resultsPerPage,
    };
