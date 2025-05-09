import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/quran/data/datasources/quran_remote_datasources.dart';
import 'package:al_quran_app/features/quran/data/models/surah_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class QuranRepository {
  Future<Either<AppException, SurahModel>> getQuran({required int id});
}

@LazySingleton(as: QuranRepository)
class QuranRepositoryImpl implements QuranRepository {
  final QuranRemoteDatasource quranRemoteDatasource;

  QuranRepositoryImpl({required this.quranRemoteDatasource});
  @override
  Future<Either<AppException, SurahModel>> getQuran({required int id}) async {
    try {
      final result = await quranRemoteDatasource.getQuran(id: id);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerException(code: e.code, message: e.message));
    } on InternetConnectionException catch (e) {
      return Left(
          InternetConnectionException(code: e.code, message: e.message));
    } on DefaultAppException catch (e) {
      return Left(DefaultAppException(code: e.code, message: e.message));
    }
  }
}
