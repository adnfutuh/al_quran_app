import 'package:al_quran_app/core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/note.dart';
import '../datasources/note_local_datasource.dart';

abstract class NoteRepository {
  Future<Either<AppException, void>> addNote(Note note);
  Future<Either<AppException, void>> deleteNote(int id);
  Future<Either<AppException, void>> markAsCompleted(int id);
  Future<Either<AppException, List<Note>>> getNotes();
}

@LazySingleton(as: NoteRepository)
class NoteRepositoryImpl implements NoteRepository {
  final NoteLocalDataSource localDataSource;

  NoteRepositoryImpl(this.localDataSource);

  @override
  Future<Either<AppException, void>> addNote(Note note) async {
    try {
      final result = await localDataSource.addNote(note);
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
  Future<Either<AppException, void>> deleteNote(int id) async {
    try {
      final result = await localDataSource.deleteNote(id);
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
  Future<Either<AppException, void>> markAsCompleted(int id) async {
    try {
      final result = await localDataSource.markAsCompleted(id);
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
  Future<Either<AppException, List<Note>>> getNotes() async {
    try {
      final result = await localDataSource.getNotes();
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
