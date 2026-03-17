import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class PlanesPage extends StatelessWidget {
  const PlanesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Planes')),
      drawer: const DrawerMenu(),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://images.unsplash.com/photo-1494390248081-4e521a5940db?w=400&auto=format&fit=crop',
            width: 200, height: 200, fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}