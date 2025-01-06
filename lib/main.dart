import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_training/constants/consts.dart';
import 'package:note_app_training/helper/simple_bloc_observer.dart';
import 'package:note_app_training/models/note_model.dart';
import 'package:note_app_training/views/notes_view.dart';

import 'cubits/notes_cubit/notes_cubit.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: const Color.fromARGB(255, 48, 48, 48),
        ),
        home: const NotesView(),
      ),
    );
  }
}
