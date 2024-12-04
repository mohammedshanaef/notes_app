import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/widgets/custom_text.dart';

class NoteItem extends StatelessWidget {
  NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: CustomText(
                  text: note.title,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: note.subtitle,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    note.delete();
                  },
                  color: Colors.black,
                  iconSize: 36,
                ),
              ),
              CustomText(
                text: note.date,
                color: Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
