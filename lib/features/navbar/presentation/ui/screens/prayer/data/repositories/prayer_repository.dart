import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/data/datasources/prayer_datasource.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/data/models/prayer_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class PrayerRepository {
  Future<Either<AppException, List<PrayerModel>>> getPrayerList();
  Future<Either<AppException, PrayerModel>> getPrayerDetail({required int id});
}

@LazySingleton(as: PrayerRepository)
class PrayerRepositoryImpl implements PrayerRepository {
  final PrayerDatasource quranRemoteDatasource;

  PrayerRepositoryImpl({required this.quranRemoteDatasource});

  @override
  Future<Either<AppException, List<PrayerModel>>> getPrayerList() async {
    try {
      final result = await quranRemoteDatasource.getPrayerList();
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

  @override
  Future<Either<AppException, PrayerModel>> getPrayerDetail(
      {required int id}) async {
    try {
      final result = await quranRemoteDatasource.getPrayerDetail(id: id);
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
