import 'package:flutter/material.dart';
import 'package:notes_app/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
