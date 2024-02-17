import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:note_app_with_cubit/core/Assets.dart';
import 'package:note_app_with_cubit/core/constants.dart';

import '../../features/feature/presentation/cubits/notes_cubit/notes_cubit.dart';
import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key,
      required this.title,
      required this.icon,
      this.onPressed,
      required this.ledaing})
      : super(key: key);

  final bool ledaing;
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ledaing
                ? Icon(
                    Icons.edit_attributes,
                    color: NotesCubit.get(context).isdark
                        ? kPrimaryColor
                        : Colors.white,
                    size: 60,
                  )
                : Text(""),
            Text(title, style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
