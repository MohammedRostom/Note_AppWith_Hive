import 'package:flutter/material.dart';
import 'package:note_app_with_cubit/core/constants.dart';

class themes {
  static final ThemeData LighTheme = ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
          brightness: Brightness.light,
          primaryContainer: Colors.grey.withOpacity(0.7),
          secondaryContainer: kPrimaryColor),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)),
      textTheme: TextTheme(
        labelLarge: TextStyle(fontSize: 25, color: Colors.black),
        titleLarge: TextStyle(fontSize: 20, color: Colors.black),
        titleMedium:
            TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.9)),
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.black),
      iconTheme: IconThemeData(color: Colors.white));

  static final ThemeData DarkTheme = ThemeData(
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: kPrimaryColor),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white)),
      colorScheme: ThemeData().colorScheme.copyWith(
          brightness: Brightness.dark,
          primaryContainer: Colors.grey.withOpacity(0.4),
          secondaryContainer: kPrimaryColor),
      textTheme: TextTheme(
        labelLarge: TextStyle(fontSize: 25),
        titleLarge: TextStyle(fontSize: 20, color: Colors.black),
        titleMedium:
            TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.7)),
      ),
      iconTheme: IconThemeData(color: Colors.black));
}
