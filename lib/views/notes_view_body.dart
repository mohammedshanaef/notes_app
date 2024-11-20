import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/widgets/custom_appBar.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:notes_app/views/widgets/custom_text.dart';
import 'package:notes_app/views/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 55),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
