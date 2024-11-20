import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appBar.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:notes_app/views/widgets/custom_text.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 55),
          CustomAppBar(),
          CustomNoteItem(),
        ],
      ),
    );
  }
}