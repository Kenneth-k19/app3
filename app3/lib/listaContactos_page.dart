import 'package:app3/contactos_page.dart';
import 'package:flutter/material.dart';

class ListaContactos extends StatelessWidget {
   ListaContactos({super.key});

  final List<Map<String, dynamic>> contactos = 
  [
    {'nombre':'A Besi',
      'telefono':'9876-4325',
      'correo':'Besi@gmail.com',},
    {'nombre':'Abby',
      'telefono':'9076-4322',
      'correo':'abby@gmail.com',},
    {'nombre':'Abg. Diogenes',
      'telefono':'3456-7892',
      'correo':'dio@gmail.com',},
    {'nombre':'Abg. Juan Reyes',
      'telefono':'9532-1456',
      'correo':'juancho@gmail.com',},
    {'nombre':'Abigail Amador',
      'telefono':'3213-6798',
      'correo':'amador@gmail.com',},
    {'nombre':'Abner',
      'telefono':'9543-0989',
      'correo':'abner@gmail.com',},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),

      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (BuildContext context, int index)
        {
          return ListTile(
            title: Text(contactos[index].values.first),
            leading: const CircleAvatar(child: Text('')),
            onTap: (){},
          );
        },
        ),
    );
  }
}