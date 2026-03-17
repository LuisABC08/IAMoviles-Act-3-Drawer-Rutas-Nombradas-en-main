import 'package:flutter/material.dart';
import 'LasPaginas/inicio.dart';
import 'LasPaginas/planes.dart';
import 'LasPaginas/recetas.dart';
import 'LasPaginas/calendario.dart';

void main() => runApp(const EasyDietApp());

class EasyDietApp extends StatelessWidget {
  const EasyDietApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyDiet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF212121), // Gris Oscuro
        primaryColor: const Color(0xFF32CD32), // Verde Lima
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF424242), // Gris más claro
          centerTitle: true,
        ),
      ),
      // Definición de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPage(),
        '/planes': (context) => const PlanesPage(),
        '/recetas': (context) => const RecetasPage(),
        '/calendario': (context) => const CalendarioPage(),
      },
    );
  }
}