import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/screens/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({super.key, required this.note});
  final NoteModel note;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            EditNoteViewBody(
              note: note,
            ),
          ],
        ),
      ),
    );
  }
}
