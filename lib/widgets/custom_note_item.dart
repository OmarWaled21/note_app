import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:note_app_training/models/note_model.dart';
import 'package:note_app_training/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const EditNoteView()),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Colors.amber.shade200,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(note.content,
                    style: TextStyle(
                        color: Colors.black.withAlpha(125), fontSize: 18)),
              ),
              isThreeLine: true,
              trailing: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Text(formatDate(note.date),
                  style: TextStyle(color: Colors.black.withAlpha(125))),
            ),
          ],
        ),
      ),
    );
  }
}

String formatDate(String date) {
  var dateTime = DateTime.parse(date);
  var formattedDate = DateFormat('MMM D, yy').format(dateTime);
  return formattedDate;
}
