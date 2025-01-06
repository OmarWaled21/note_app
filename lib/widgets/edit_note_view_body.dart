import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_training/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_training/models/note_model.dart';
import 'package:note_app_training/widgets/custom_app_bar.dart';
import 'package:note_app_training/widgets/custom_text_form_field.dart';
import 'package:note_app_training/widgets/edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    titleController.text = widget.note.title;
    contentController.text = widget.note.content;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppBar(
              appTitle: 'Edit Note',
              onTap: () {
                widget.note.title = titleController.text;
                widget.note.content = contentController.text;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icon: Icons.done,
            ),
            const SizedBox(height: 32),
            CustomTextFormField(
              hint: 'Title',
              controller: titleController,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hint: 'content',
              controller: contentController,
              maxLines: 5,
            ),
            const SizedBox(height: 32),
            EditNoteColorList(note: widget.note)
          ],
        ),
      ),
    );
  }
}
