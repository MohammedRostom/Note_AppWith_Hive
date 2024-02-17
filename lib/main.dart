import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_with_cubit/config/routing/routing.dart';
import 'package:note_app_with_cubit/config/theme/theme.dart';

import 'core/Cache/cache.dart';
import 'core/simple_bloc_observer.dart';
import 'features/feature/data/data_sources/local/hive/hiveClass.dart';
import 'features/feature/presentation/cubits/notes_cubit/notes_cubit.dart';

void main() async {
  await Hive.initFlutter();
  HiveHelperLocalDataBases.InitHiveBox();
  var boolTheme = await HiveCashe.GetTheme("ThemeModee");
  print(boolTheme);
  Bloc.observer = SimpleBlocObserver();
  runApp(NotesApp(
    themMode: boolTheme,
  ));
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key, required this.themMode}) : super(key: key);
  final bool themMode;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..changetheme(change: themMode),
      child: BlocConsumer<NotesCubit, NotesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: NotesCubit.get(context).isdark
                ? themes.LighTheme
                : themes.DarkTheme,
            routes: Routeing.MapOfAppRoutes,
            initialRoute: Routeing.AllNotes,
          );
        },
      ),
    );
  }
}
