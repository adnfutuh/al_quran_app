import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/note.dart';

abstract class NoteLocalDataSource {
  Future<void> addNote(Note note);
  Future<void> deleteNote(int id);
  Future<void> markAsCompleted(int id);
  Future<List<Note>> getNotes();
}

@LazySingleton(as: NoteLocalDataSource)
class NoteLocalDataSourceImpl implements NoteLocalDataSource {
  final Box<Note> _noteBox;

  NoteLocalDataSourceImpl(this._noteBox);

  @override
  Future<void> addNote(Note note) async {
    await _noteBox.put(note.id, note);
  }

  @override
  Future<void> deleteNote(int id) async {
    await _noteBox.delete(id);
  }

  @override
  Future<void> markAsCompleted(int id) async {
    final note = _noteBox.get(id);
    if (note != null) {
      final updateNote = note.copyWith(isCompleted: true);
      await _noteBox.put(id, updateNote);
    }
  }

  @override
  Future<List<Note>> getNotes() async {
    return _noteBox.values.toList();
  }
}
