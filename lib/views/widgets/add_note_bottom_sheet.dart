import 'package:flutter/material.dart';
import 'package:notes_app/views/constant.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hintText: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(
          Colors.white,
        ),
        focusedBorder: buildBorder(),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? kPrimaryColor // Ensure the default is a `Color`
          ),
    );
  }
}
