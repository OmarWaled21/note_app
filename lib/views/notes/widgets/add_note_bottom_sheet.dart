import 'package:flutter/material.dart';
import 'package:note_app_training/constants/colors.dart';
import 'package:note_app_training/constants/media_query_values_extintions.dart';
import 'package:note_app_training/views/notes/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        children: [
          CustomTextField(hint: 'Title', maxLines: 1),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 5),
          CustomBotton(),
        ],
      ),
    );
  }
}

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: context.screenWidth,
      color: kCyanColor,
      textColor: Colors.black,
      onPressed: () {},
      child: const Text('Add'),
    );
  }
}
