import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
