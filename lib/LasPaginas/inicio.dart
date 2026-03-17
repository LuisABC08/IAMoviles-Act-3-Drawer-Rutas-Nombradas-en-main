import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      drawer: const DrawerMenu(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/LuisABC08/imagenes/main/inicio.png',
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}