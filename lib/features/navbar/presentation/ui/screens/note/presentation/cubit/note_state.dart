part of 'note_cubit.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState.initial() = _Initial;
  const factory NoteState.loading() = _Loading;
  const factory NoteState.success(List<Note> notes) = _Success;
  const factory NoteState.error(AppException error) = _Error;
}
