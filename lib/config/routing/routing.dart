import 'package:flutter/material.dart';

import '../../features/feature/presentation/views/editScreen/edit_note_view.dart';
import '../../features/feature/presentation/views/notesScreen/notes_view.dart';

class Routeing {
  static final AllNotes = "AllNotes";
  static final EditNotes = "EditNotes";

  static Map<String, Widget Function(BuildContext)> MapOfAppRoutes = {
    AllNotes: (context) => NotesView(),
    EditNotes: (context) => EditNoteView(),
  };
}
