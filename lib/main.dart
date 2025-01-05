import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_training/constants/consts.dart';
import 'package:note_app_training/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_training/helper/simple_bloc_observer.dart';
import 'package:note_app_training/models/note_model.dart';
import 'package:note_app_training/views/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddNoteCubit>(create: (context) => AddNoteCubit()),
      ],
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
