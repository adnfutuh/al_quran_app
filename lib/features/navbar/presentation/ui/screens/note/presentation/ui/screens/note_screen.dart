import 'package:al_quran_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entity/note.dart';
import '../../cubit/note_cubit.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  void initState() {
    super.initState();
    GetIt.I<NoteCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).bgScaffold2,
      appBar: AppBar(
        title: const Text(
          'My Notes',
          style: TextStyle(color: Pallet.white),
        ),
        backgroundColor: Theme.of(context).mynotes,
      ),
      body: const NoteList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddNoteDialog(context),
        backgroundColor: Theme.of(context).mynotes,
        child: const Icon(
          Icons.add,
          color: Pallet.white,
        ),
      ),
    );
  }

  void _showAddNoteDialog(BuildContext context) {
    final titleController = TextEditingController();
    final contentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Tambah Catatan'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Judul Catatan',
              ),
            ),
            TextField(
              controller: contentController,
              decoration: const InputDecoration(
                labelText: 'Isi Catatan',
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              if (titleController.text.isNotEmpty &&
                  contentController.text.isNotEmpty) {
                final note = Note(
                  id: DateTime.now().millisecondsSinceEpoch,
                  title: titleController.text,
                  content: contentController.text,
                  isCompleted: false,
                  createdAt: DateTime.now(),
                );
                context.read<NoteCubit>().addNote(note);
                Navigator.of(context).pop();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Judul dan konten tidak boleh kosong')),
                );
              }
            },
            child: const Text('Tambah'),
          ),
        ],
      ),
    );
  }
}

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
          error: (error) {
            return Center(child: Text('Error: ${error.message}'));
          },
          success: (notes) {
            if (notes.isEmpty) {
              return const Center(child: Text('Tidak ada catatan!'));
            }

            return ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return Dismissible(
                  key: Key(note.id.toString()),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    context.read<NoteCubit>().deleteNote(note.id);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Catatan ${note.title} dihapus')),
                    );
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(Icons.delete, color: Colors.white),
                    ),
                  ),
                  child: Builder(builder: (context) {
                    return Card(
                      color: Theme.of(context).cardNotes,
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16.0),
                        title: Text(
                          note.title,
                          style: TextStyle(
                              fontSize: 18, color: Theme.of(context).txtNotes),
                        ),
                        subtitle: Text(
                          note.content,
                          style: TextStyle(color: Theme.of(context).txtContent),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.check_circle,
                            color: note.isCompleted ? Pallet.cyan : Colors.grey,
                          ),
                          onPressed: () {
                            context.read<NoteCubit>().markAsCompleted(note.id);
                          },
                        ),
                      ),
                    );
                  }),
                );
              },
            );
          },
          orElse: () {
            return const Center(child: Text('Tidak ada catatan!'));
          },
        );
      },
    );
  }
}
