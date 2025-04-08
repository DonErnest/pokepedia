import 'package:flutter/material.dart';
import 'package:pokepedia/pokepedia.dart';
import 'package:pokepedia/theme/dark_theme.dart';
import 'package:pokepedia/theme/light_theme.dart';

void main() {
  runApp(
    MaterialApp(home: Pokepedia(), theme: lightTheme, darkTheme: darkTheme),
  );
}
