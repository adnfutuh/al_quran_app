import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../quran/data/models/surah_model.dart';
import '../../cubit/audio_cubit.dart';

class AudioPlayerUI extends StatelessWidget {
  final SurahModel surahModel;
  const AudioPlayerUI({super.key, required this.surahModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioCubit, AudioState>(
      builder: (context, state) {
        String audioUrl = surahModel.audio;
        return state.maybeWhen(
          initial: () {
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                context.read<AudioCubit>().playPauseAudio(audioUrl);
              },
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                child: const SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      'Play Audio',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            );
          },
          playing: () {
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                context.read<AudioCubit>().playPauseAudio(audioUrl);
              },
              child: Material(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                child: const SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      'Pause Audio',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            );
          },
          paused: () {
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                context.read<AudioCubit>().playPauseAudio(audioUrl);
              },
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                child: const SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      'Play Audio',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            );
          },
          stopped: () {
            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                context.read<AudioCubit>().playPauseAudio(audioUrl);
              },
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                child: const SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      'Play Audio', // Restart the text to "Play Audio"
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            );
          },
          orElse: () => const Center(child: Text("Tidak ada data tersedia")),
        );
      },
    );
  }
}
