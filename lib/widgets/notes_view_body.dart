import 'package:flutter/material.dart';
import 'package:note_app_training/widgets/custom_app_bar.dart';
import 'package:note_app_training/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
