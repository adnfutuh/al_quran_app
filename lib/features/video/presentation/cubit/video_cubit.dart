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

  VideoCubit(this.videoRemoteDatasource) : super(const VideoState.initial());

  Future<void> searchVideos(String query) async {
    try {
      emit(const VideoState.loading());

      final liveVideos =
          await videoRemoteDatasource.getVideo(query: query, isLive: true);
      final nonLiveVideos =
          await videoRemoteDatasource.getVideo(query: query, isLive: false);

      emit(VideoState.success(
        liveVideos: liveVideos,
        nonLiveVideos: nonLiveVideos,
      ));
    } on ServerException catch (e) {
      emit(VideoState.error(
          error: DefaultAppException(message: 'Server error: ${e.message}')));
    } on InternetConnectionException catch (e) {
      emit(VideoState.error(
          error: DefaultAppException(
              message: 'No internet connection: ${e.message}')));
    } catch (e) {
      emit(VideoState.error(
          error: DefaultAppException(
              message: 'An unexpected error occurred: $e')));
    }
  }
}
