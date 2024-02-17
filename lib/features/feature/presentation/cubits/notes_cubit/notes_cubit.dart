import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/Cache/cache.dart';
import '../../../data/data_sources/local/hive/hiveClass.dart';
import '../../../data/models/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  static NotesCubit get(context) => BlocProvider.of(context);
  bool isdark = false;
  changetheme({bool? change}) {
    if (change != null) {
      isdark = change;
    } else {
      isdark = !isdark;
      emit(ChangeTheme());
    }
    HiveCashe.setTheme("ThemeModee", isdark);
    print(" from Emit : $isdark");
    emit(ChangeTheme());
  }

  List<NoteModel>? notes;
  fetchAllNotes() async {
    notes = HiveHelperLocalDataBases().getAllNotes();
    emit(NotesSuccess());
  }
}
