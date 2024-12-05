import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:confetti/confetti.dart'; // استيراد المكتبة
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
  bool isLodaing = false;
  late ConfettiController _confettiController; // التحكم بالكونفيتي

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 2)); // مدة الكونفيتي
  }

  @override
  void dispose() {
    _confettiController.dispose(); // تأكد من تحرير الموارد
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CustomAppBar(
              onPressed: () async {
                setState(() {
                  isLodaing = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                setState(() {
                  isLodaing = false;
                });
                _confettiController.play(); // تشغيل الكونفيتي
                await Future.delayed(const Duration(seconds: 2)); // مدة الكونفيتي
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: isLodaing ? Icons.hourglass_top : Icons.check,
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
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: _confettiController,
            blastDirectionality: BlastDirectionality.explosive, // اتجاه الكونفيتي
            shouldLoop: false, // عدم التكرار
            colors: const [Colors.blue, Colors.green, Colors.orange, Colors.pink],
          ),
        ),
      ],
    );
  }
}
