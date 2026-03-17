import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class RecetasPage extends StatelessWidget {
  const RecetasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recetas')),
      drawer: const DrawerMenu(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/LuisABC08/imagenes/main/recetas.png',
          width: 200, height: 200,
          fit: BoxFit.contain
        ),
      ),
    );
  }
}