import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    const seedColor = Colors.teal;
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: seedColor,
    );
  }
}
