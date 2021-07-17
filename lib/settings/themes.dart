import 'package:flutter/material.dart';

class AppThemes {
  dynamic DarkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.blueGrey[900],
      brightness: Brightness.dark,
      primaryColor: Colors.blue[900],
      accentColor: Colors.blue[900],
      fontFamily: 'Georgia',
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue[900],
      ),
      textTheme: TextTheme(),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blue[900],
      ),
    );
  }

  dynamic LightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      accentColor: Colors.blue,
      fontFamily: 'Georgia',
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue[900],
      ),
      textTheme: TextTheme(),
    );
  }
}
