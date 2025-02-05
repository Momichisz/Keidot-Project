import 'package:flutter/material.dart';

const Color greenHigh = Color(0xFF3BA670);
const Color darkGreen = Color(0xFF12372A);
const Color defaultWhite = Color(0xFFFFFFFF);

const List<Color> _colorThemes = [
  greenHigh,
  darkGreen,
  defaultWhite,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      fontFamily: 'Poppins', // Aquí defines la fuente por defecto
    );
  }
}
