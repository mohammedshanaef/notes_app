import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
        ),
      ],
    );
  }
}
