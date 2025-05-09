part of 'audio_cubit.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState.initial() = _Initial;
  const factory AudioState.playing() = _Playing;
  const factory AudioState.paused() = _Paused;
  const factory AudioState.stopped() = _Stopped;
}
