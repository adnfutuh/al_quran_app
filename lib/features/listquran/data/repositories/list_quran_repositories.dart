import 'package:al_quran_app/features/listquran/data/datasources/list_quran_remote_datasources.dart';
import 'package:al_quran_app/features/listquran/data/models/list_ayat.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core.dart';

abstract class ListQuranRepository {
  Future<Either<AppException, List<ListAyat>>> getListQuran();
}

@LazySingleton(as: ListQuranRepository)
class ListQuranRepositoryImpl implements ListQuranRepository {
  final ListQuranRemoteDatasources listQuranRemoteDatasource;

  ListQuranRepositoryImpl({required this.listQuranRemoteDatasource});

  @override
  Future<Either<AppException, List<ListAyat>>> getListQuran() async {
    try {
      final result = await listQuranRemoteDatasource.getListQuran();
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
