import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF303030),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF32CD32)), // Verde Lima
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/415/415733.png'),
            ),
            accountName: Text('EasyDiet', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            accountEmail: Text(
              '8451 calle maduro, tlaxcala, Mexico\n6561112233 | EasyDiet@gmail.com',
              style: TextStyle(color: Colors.black87, fontSize: 11),
            ),
          ),
          _item(context, Icons.home, 'Inicio', '/'),
          _item(context, Icons.list_alt, 'Planes', '/planes'),
          _item(context, Icons.restaurant, 'Recetas', '/recetas'),
          _item(context, Icons.calendar_today, 'Calendario', '/calendario'),
        ],
      ),
    );
  }

  Widget _item(BuildContext context, IconData icon, String texto, String ruta) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF32CD32)),
      title: Text(texto, style: const TextStyle(color: Colors.white)),
      onTap: () {
        // Navegación por nombre
        Navigator.pushReplacementNamed(context, ruta);
      },
    );
  }
}