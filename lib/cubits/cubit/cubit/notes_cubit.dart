import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;

  fetchAllNotes() async {
    var notesBox = await Hive.openBox<NoteModel>(kNotesBox); // فتح الصندوق
    notes = notesBox.values.toList(); // تحويل القيم إلى قائمة
    emit(NotesLoaded(notes: notes)); // تحديث الحالة
  }
}
