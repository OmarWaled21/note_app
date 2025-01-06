import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_training/constants/media_query_values_extintions.dart';
import 'package:note_app_training/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_training/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_training/helper/show_snack_bar.dart';
import 'package:note_app_training/widgets/add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            showSnackBar(context, 'failed');
          } else if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
            showSnackBar(context, 'Success');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
                bottom: 32 + context.insets.bottom,
              ),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
