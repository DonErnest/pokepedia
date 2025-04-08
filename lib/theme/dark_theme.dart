import 'package:flutter/material.dart';

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromRGBO(251, 54, 64, 1),
  dynamicSchemeVariant: DynamicSchemeVariant.expressive,
  brightness: Brightness.dark,
);
final darkTheme = ThemeData.dark().copyWith(
  colorScheme: darkColorScheme,
);