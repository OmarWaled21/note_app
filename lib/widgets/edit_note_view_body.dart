import 'package:flutter/material.dart';
import 'package:note_app_training/widgets/custom_app_bar.dart';
import 'package:note_app_training/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppBar(appTitle: 'Edit Note', onTap: () {}, icon: Icons.done),
            const SizedBox(height: 32),
            const CustomTextFormField(hint: 'Title'),
            const SizedBox(height: 16),
            const CustomTextFormField(hint: 'content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
