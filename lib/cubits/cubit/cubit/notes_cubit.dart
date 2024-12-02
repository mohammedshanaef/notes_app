import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var notesBox = await Hive.openBox<NoteModel>(kNotesBox); // Wait for the box to open
      List<NoteModel> notes = notesBox.values.toList(); // Access and convert values to a list
      emit(NotesSuccess(notes)); // Emit the success state with notes
    } catch (e) {
      emit(NotesFaliure(e.toString())); // Emit failure state with error message
    }
  }
}
