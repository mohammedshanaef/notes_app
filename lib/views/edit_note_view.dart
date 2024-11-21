import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            EditNoteViewBody(),
          ],
        ),
      ),
    );
  }
}
