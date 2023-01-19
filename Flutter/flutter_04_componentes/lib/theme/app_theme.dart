import 'package:flutter_04_componentes/pages/pages.dart';

class AppTheme{

  static const Color primario = Colors.indigo;
  // Tema claro personalizado
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: primario,
      elevation: 0,
    ),

    // Estilo de los iconos
    iconTheme: const IconThemeData(opacity: 0.1, color: primario),
  );

  // Tema propia: HALLOWEEN
  static final ThemeData halloween = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.orange),
    backgroundColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.orange),
  );
}