import 'package:flutter/material.dart';

final lightColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromRGBO(251, 54, 64, 1),
  dynamicSchemeVariant: DynamicSchemeVariant.expressive,
);
final lightTheme = ThemeData.light().copyWith(
  colorScheme: lightColorScheme,
);