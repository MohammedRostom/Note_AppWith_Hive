import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../../../../core/Assets.dart';
import '../../../../data/models/note_model.dart';
import '../../../cubits/notes_cubit/notes_cubit.dart';
import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Lottie.asset(
                    NotesCubit.get(context).isdark
                        ? Asset_App.LightIcon
                        : Asset_App.DarKIcon,
                    width: 250,
                    repeat:
                        NotesCubit.get(context).notes!.isEmpty ? false : true),
                height: 250,
                width: MediaQuery.of(context).size.width,
              ),
              Text(
                "My Notes",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontFamily: Asset_App.NameFont),
              ),
              Flexible(
                child: NotesCubit.get(context).notes!.isEmpty
                    ? Lottie.asset("${Asset_App.EmptyIcon}")
                    : ListView.builder(
                        itemCount: notes.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: NoteItem(
                              note: notes[index],
                            ),
                          );
                        }),
              ),
            ],
          ),
        );
      },
    );
  }
}
