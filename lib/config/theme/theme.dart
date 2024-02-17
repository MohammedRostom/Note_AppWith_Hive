import 'package:flutter/material.dart';
import 'package:note_app_with_cubit/core/constants.dart';

class themes {
  static final ThemeData LighTheme = ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
          brightness: Brightness.light,
          primaryContainer: Colors.grey.withOpacity(0.3),
          secondaryContainer: kPrimaryColor),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: kPrimaryColor)),
      textTheme: TextTheme(
        labelLarge:
            TextStyle(fontSize: 30, color: kPrimaryColor, fontFamily: "MyFont"),
        labelMedium: TextStyle(fontSize: 23, color: kPrimaryColor),
        titleLarge: TextStyle(fontSize: 20, color: Colors.black),
        titleMedium:
            TextStyle(fontSize: 19, color: Colors.black.withOpacity(0.9)),
        titleSmall: TextStyle(color: Colors.black),
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: kPrimaryColor),
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
        labelLarge:
            TextStyle(fontSize: 30, color: Colors.white, fontFamily: "MyFont"),
        labelMedium: TextStyle(fontSize: 23, color: Colors.white),
        titleLarge: TextStyle(fontSize: 22, color: Colors.black),
        titleMedium: TextStyle(
          fontSize: 19,
          color: Colors.black.withOpacity(0.7),
        ),
        titleSmall: TextStyle(color: Colors.white),
      ),
      iconTheme: IconThemeData(color: Colors.white));
}
