import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/Components/custom_app_bar.dart';
import '../../../cubits/notes_cubit/notes_cubit.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          BlocConsumer<NotesCubit, NotesState>(listener: (context, state) {
            // TODO: implement listener
          }, builder: (context, state) {
            return CustomAppBar(
              ledaing: true,
              title: 'Notes',
              icon: NotesCubit.get(context).isdark
                  ? Icons.dark_mode_outlined
                  : Icons.dark_mode,
              onPressed: () => NotesCubit.get(context).changetheme(),
            );
          }),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
