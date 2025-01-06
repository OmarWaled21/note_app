import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_training/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_training/widgets/custom_app_bar.dart';
import 'package:note_app_training/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          CustomAppBar(
            appTitle: 'Note App',
            icon: Icons.search,
            onTap: () {},
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
