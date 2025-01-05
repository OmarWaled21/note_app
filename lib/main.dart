import 'package:flutter/material.dart';
import 'package:note_app_training/constants/strings.dart';
import 'package:note_app_training/views/notes/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: poppinsFont,
        scaffoldBackgroundColor: const Color.fromARGB(255, 48, 48, 48),
      ),
      home: const NotesView(),
    );
  }
}
