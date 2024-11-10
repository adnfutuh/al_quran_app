import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/video/data/datasources/video_remote_datasource.dart';
import 'package:al_quran_app/features/video/data/models/video_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class VideoRepository {
  Future<Either<AppException, VideoModel>> getVideo(
      {required String query, required bool isLive});
}

@LazySingleton(as: VideoRepository)
class VideoRepositoryImpl implements VideoRepository {
  final VideoRemoteDatasource remoteDataSource;

  VideoRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppException, VideoModel>> getVideo(
      {required String query, required bool isLive}) async {
    try {
      final result =
          await remoteDataSource.getVideo(query: query, isLive: isLive);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerException(code: e.code, message: e.message));
    } on InternetConnectionException catch (e) {
      return Left(
          InternetConnectionException(code: e.code, message: e.message));
    } on DefaultAppException catch (e) {
      return Left(DefaultAppException(code: e.code, message: e.message));
    } catch (e) {
      return Left(
          DefaultAppException(message: 'An unexpected error occurred: $e'));
    }
  }
}
