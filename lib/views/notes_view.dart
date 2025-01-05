import 'package:flutter/material.dart';
import 'package:note_app_training/constants/colors.dart';
import 'package:note_app_training/widgets/add_note_bottom_sheet.dart';
import 'package:note_app_training/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            context: context,
            builder: (context) => const AddNoteButtonSheet(),
          );
        },
        backgroundColor: kCyanColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
