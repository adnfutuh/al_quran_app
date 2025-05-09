import 'package:al_quran_app/features/navbar/presentation/ui/screens/note/data/repository/note_repository.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/note/domain/entity/note.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../../core/core.dart';

@lazySingleton
class NoteUsecase {
  final NoteRepository repository;
  NoteUsecase({required this.repository});
  Future<Either<AppException, void>> callAddNote(Note note) async {
    return await repository.addNote(note);
  }

  Future<Either<AppException, void>> callDeleteNote(int id) async {
    return await repository.deleteNote(id);
  }

  Future<Either<AppException, void>> callGetMark(int id) async {
    return await repository.markAsCompleted(id);
  }

  Future<Either<AppException, List<Note>>> callGetNotes() async {
    return await repository.getNotes();
  }
}
