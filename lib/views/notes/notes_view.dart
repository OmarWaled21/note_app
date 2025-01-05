import 'package:flutter/material.dart';
import 'package:note_app_training/views/notes/widgets/add_note_bottom_sheet.dart';
import 'package:note_app_training/views/notes/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddNoteButtonSheet(),
          );
        },
        backgroundColor: Colors.cyan,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
