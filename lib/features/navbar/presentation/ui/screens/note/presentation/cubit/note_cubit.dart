import 'package:al_quran_app/core/core.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/note.dart';

part 'note_state.dart';
part 'note_cubit.freezed.dart';

@singleton
class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(const NoteState.initial());

  List<Note> _notes = [];

  // Add note
  void addNote(Note note) {
    emit(const NoteState.loading());
    try {
      _notes.add(note);
      emit(NoteState.success(List.from(_notes)));
    } catch (e) {
      emit(NoteState.error(DefaultAppException(message: e.toString())));
    }
  }

  // Delete note
  void deleteNote(int id) {
    emit(const NoteState.loading());
    try {
      _notes.removeWhere((note) => note.id == id);
      emit(NoteState.success(List.from(_notes)));
    } catch (e) {
      emit(NoteState.error(DefaultAppException(message: e.toString())));
    }
  }

  void markAsCompleted(int id) {
    emit(const NoteState.loading());
    try {
      _notes = _notes.map((note) {
        if (note.id == id) {
          return note.copyWith(
              isCompleted: !note.isCompleted); // Toggle the completion status
        }
        return note;
      }).toList();
      emit(NoteState.success(List.from(_notes)));
    } catch (e) {
      emit(NoteState.error(DefaultAppException(message: e.toString())));
    }
  }

  // Load notes (mimicking data fetch)
  void loadNotes() {
    emit(const NoteState.loading());
    try {
      emit(NoteState.success(List.from(_notes)));
    } catch (e) {
      emit(NoteState.error(DefaultAppException(message: e.toString())));
    }
  }
}
