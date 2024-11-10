import 'package:al_quran_app/features/video/data/models/video_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core.dart';
import '../../data/datasources/video_remote_datasource.dart';

part 'video_state.dart';
part 'video_cubit.freezed.dart';

@singleton
class VideoCubit extends Cubit<VideoState> {
  final VideoRemoteDatasource videoRemoteDatasource;

  final Map<String, VideoCache> _videoCache = {};

  static const int _cacheExpiryInSeconds = 3600;

  VideoCubit(this.videoRemoteDatasource) : super(const VideoState.initial());

  Future<void> searchVideos(String query) async {
    if (_isCacheValid(query)) {
      emit(VideoState.success(
          liveVideos: _videoCache[query]!.liveVideos,
          nonLiveVideos: _videoCache[query]!.nonLiveVideos));
      return;
    }

    try {
      emit(const VideoState.loading());

      final liveVideos =
          await videoRemoteDatasource.getVideo(query: query, isLive: true);
      final nonLiveVideos =
          await videoRemoteDatasource.getVideo(query: query, isLive: false);

      _saveToCache(query, liveVideos, nonLiveVideos);

      emit(VideoState.success(
          liveVideos: liveVideos, nonLiveVideos: nonLiveVideos));
    } catch (e) {
      emit(VideoState.error(error: DefaultAppException(message: e.toString())));
    }
  }

  bool _isCacheValid(String query) {
    final cache = _videoCache[query];
    if (cache == null) return false;

    final cacheTime = cache.timestamp;
    final now = DateTime.now();

    return now.difference(cacheTime).inSeconds <= _cacheExpiryInSeconds;
  }

  void _saveToCache(
      String query, VideoModel liveVideos, VideoModel nonLiveVideos) {
    final cache = VideoCache(
      liveVideos: liveVideos,
      nonLiveVideos: nonLiveVideos,
      timestamp: DateTime.now(),
    );

    _videoCache[query] = cache;
  }
}

class VideoCache {
  final VideoModel liveVideos;
  final VideoModel nonLiveVideos;
  final DateTime timestamp;

  VideoCache({
    required this.liveVideos,
    required this.nonLiveVideos,
    required this.timestamp,
  });
}
