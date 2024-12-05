import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_appBar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          onPressed: () {
            widget.note.title = title ?? widget.note.title; // if title null return the back value'
            widget.note.subtitle = content ?? widget.note.subtitle; // if subtitle null return the back value
            widget.note.save(); // Save Method From Hive Object
            BlocProvider.of<NotesCubit>(context).fetchAllNotes(); // Refresh The Data After Changes
            Navigator.pop(context);
          },
          title: 'Edit Note',
          icon: Icons.check,
        ),
        const SizedBox(
          height: 50,
        ),
        CustomTextFormField(
          onChange: (value) {
            title = value;
          },
          hintText: widget.note.title,
        ),
        const SizedBox(
          height: 25,
        ),
        CustomTextFormField(
          onChange: (value) {
            content = value;
          },
          hintText: widget.note.subtitle,
          maxLines: 5,
        ),
      ],
    );
  }
}
