import 'package:flutter/material.dart';

const Color _custonColor = Color.fromARGB(0, 22, 22, 27);

List<Color> colorThmes = [
  _custonColor,
  Colors.blueAccent,
  Colors.green,
  Colors.orangeAccent,
  Colors.redAccent,
  Colors.purpleAccent,
  Colors.deepOrange,
];

class AppTheme {
  final int selectorColores;

  AppTheme({this.selectorColores = 0})
    : assert(
        selectorColores >= 0 && selectorColores < colorThmes.length,
        'color debe ser 0 y menor que ${colorThmes.length}',
      );

  ThemeData theme() {
    
    ColorScheme.fromSeed(
      seedColor: Colors.teal, // Color base para generar el esquema
      brightness: Brightness.light, // Tema claro
      primary: Colors.teal, // Color primario
      onPrimary: Colors.white, // Color del texto/iconos sobre el primario
      secondary: Colors.amber, // Color secundario para FABs, etc.
      onSecondary:Colors.deepOrange, // Color del texto/iconos sobre el secundario

      surface: Colors.white, // Color para superficies como Card, Dialog
    );
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorThmes[selectorColores],
      //brightness: Brightness.light
    );
  }
}
