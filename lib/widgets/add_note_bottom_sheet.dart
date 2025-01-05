import 'package:flutter/material.dart';
import 'package:note_app_training/constants/media_query_values_extintions.dart';
import 'package:note_app_training/widgets/custom_button.dart';
import 'package:note_app_training/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(hint: 'Title', maxLines: 1),
            const SizedBox(height: 16),
            const CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: context.screenHeight * 0.05),
            const CustomBotton(),
          ],
        ),
      ),
    );
  }
}
