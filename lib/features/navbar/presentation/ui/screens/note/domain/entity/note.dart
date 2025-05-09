import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) required String content,
    @HiveField(3) required DateTime createdAt,
    @Default(false) @HiveField(4) bool isCompleted,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
