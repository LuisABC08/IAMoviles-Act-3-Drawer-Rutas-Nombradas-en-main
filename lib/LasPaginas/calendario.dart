import 'package:flutter/material.dart';
import 'drawer_menu.dart';

class CalendarioPage extends StatelessWidget {
  const CalendarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calendario')),
      drawer: const DrawerMenu(),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://images.unsplash.com/photo-1506784365847-bbad939e9335?w=400&auto=format&fit=crop',
            width: 200, height: 200, fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}