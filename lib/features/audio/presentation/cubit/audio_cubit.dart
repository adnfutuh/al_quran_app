import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'audio_state.dart';
part 'audio_cubit.freezed.dart';

@singleton
class AudioCubit extends Cubit<AudioState> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  AudioCubit() : super(const AudioState.initial()) {
    _audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.completed) {
        emit(const AudioState.stopped());
      }
    });
  }

  String currentAudioUrl = '';

  void playPauseAudio(String audioUrl) async {
    if (state is _Playing) {
      await _audioPlayer.pause();
      emit(const AudioState.paused());
    } else {
      await _audioPlayer.play(UrlSource(audioUrl));
      emit(const AudioState.playing());
    }
  }

  void stopAudio() async {
    await _audioPlayer.stop();
    emit(const AudioState.stopped());
  }

  @override
  Future<void> close() {
    _audioPlayer.dispose();
    return super.close();
  }
}
