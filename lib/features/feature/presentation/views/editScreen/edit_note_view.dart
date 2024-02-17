import 'package:flutter/material.dart';
import '../../../data/models/note_model.dart';
import 'widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, this.note}) : super(key: key);

  final NoteModel? note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note!,
      ),
    );
  }
}
