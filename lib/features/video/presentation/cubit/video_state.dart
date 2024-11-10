part of 'video_cubit.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = _Initial;
  const factory VideoState.loading() = _Loading;
  const factory VideoState.success({
    required VideoModel liveVideos,
    required VideoModel nonLiveVideos,
  }) = _Success;
  const factory VideoState.error({required DefaultAppException error}) = _Error;
}
