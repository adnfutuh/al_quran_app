import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/video/data/models/video_model.dart';
import 'package:al_quran_app/features/video/data/repositories/video_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetVideo {
  final VideoRepository repository;
  GetVideo(this.repository);
  Future<Either<AppException, VideoModel>> videos(
      {required String query, required bool isLive}) {
    return repository.getVideo(query: query, isLive: isLive);
  }
}
