import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import '../../../models/note_model.dart';

//methods
class HiveHelperLocalDataBases {
  static final String kNotesBox = "Notes";
  var notesBox = Hive.box<NoteModel>(kNotesBox);
  static InitHiveBox() async {
    try {
      Hive.registerAdapter(NoteModelAdapter());
      await Hive.openBox<NoteModel>(kNotesBox);
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  // As One Table Notes
  getAllNotes() {
    return notesBox.values.toList();
  }

  AddNote(NoteModel Note) {
    return notesBox.add(Note);
  }

  DeleteNote(
    NoteModel Note,
  ) {
    return notesBox.delete(Note.key);
  }

  UpdateNote(NoteModel Note, index) {
    return notesBox.putAt(index, Note);
  }
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++
  // // As One Table Note2
  // getAllNotes() {
  //   return notesBox.values.toList();
  // }

  // AddNote(Note Note) {
  //   return notesBox.add(Note);
  // }

  // DeleteNote(
  //   Note Note,
  // ) {
  //   return notesBox.delete(Note.key);
  // }

  // UpdateNote(Note Note, index) {
  //   return notesBox.putAt(index, Note);
  // }
}
