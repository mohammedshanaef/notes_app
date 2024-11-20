import 'package:flutter/material.dart';
import 'package:notes_app/views/constant.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';

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
}

OutlineInputBorder buildBorder([Color? color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: color ?? kPrimaryColor // Ensure the default is a `Color`
        ),
  );
}
