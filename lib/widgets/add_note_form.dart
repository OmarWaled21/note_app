import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_training/constants/media_query_values_extintions.dart';
import 'package:note_app_training/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_training/models/note_model.dart';
import 'package:note_app_training/widgets/custom_button.dart';
import 'package:note_app_training/widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            hint: 'Title',
            maxLines: 1,
            onSaved: (value) => title = value,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) => content = value,
          ),
          SizedBox(height: context.screenHeight * 0.05),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBotton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var note = NoteModel(
                      title: title!,
                      content: content!,
                      date: DateTime.now().toString(),
                      color: Colors.redAccent.hashCode,
                    );

                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
