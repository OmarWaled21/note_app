import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app_training/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_training/helper/show_snack_bar.dart';
import 'package:note_app_training/widgets/add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailure) {
          debugPrint('faild');
        } else if (state is AddNoteSuccess) {
          Navigator.pop(context);
          showSnackBar(context, 'Success');
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: const SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      },
    );
  }
}
