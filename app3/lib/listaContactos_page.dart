import 'package:app3/contactos_page.dart';
import 'package:app3/extract_arguments.dart';
import 'package:app3/user_arguments.dart';
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
    {'nombre':'Roberto Martinez',
    'telefono':'3452-7612',
    'correo':'martinez@gmail.com',},
    {'nombre':'Cristiano Ronaldo',
    'telefono':'9087-3421',
    'correo':'swewie@cr7.com',},
    {'nombre':'Manuel Alvarez',
    'telefono':'3265-0812',
    'correo':'alvarez@gmail.com',},
    {'nombre':'Keyla Brown',
    'telefono':'4567-0900',
    'correo':'kiki@gmail.com',},
    {'nombre':'Maria Juana',
    'telefono':'2314-0020',
    'correo':'juana@hotmail.com',},
    {'nombre':'Carlos Mondragon',
    'telefono':'5678-2140',
    'correo':'mondie@gmail.com',},
    {'nombre':'Sol',
    'telefono':'3421-7612',
    'correo':'sol@aol.com',},
    {'nombre':'Adam Sandler',
    'telefono':'9067-1254',
    'correo':'maddison@aol.com',},
    {'nombre':'Yandel Guadalupe',
    'telefono':'2145-8906',
    'correo':'yandel@yahoo.com',},
    {'nombre':'Lamar Oddom',
    'telefono':'4521-7094',
    'correo':'lamar@gmail.com',},
    {'nombre':'LeBron James',
    'telefono':'3452-7612',
    'correo':'james23@goat.com',},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (BuildContext context, int index)
        {
          return index!=0 ? Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              title: Text(contactos[index]['nombre'],),
              leading: CircleAvatar( 
                  backgroundColor: const Color.fromRGBO(62,180,137,0.5),
                  radius: 22, 
                  child: Text(contactos[index]['nombre'][0], 
                      style: const TextStyle(fontSize: 25,),
                    ),
                ),
              onTap: (){
                Navigator.pushNamed(
                  context, 
                  ExtractUserArguments.routeName,
                  arguments: UserArguments(nombre: contactos[index]['nombre'], numero: contactos[index]['telefono'], correo: contactos[index]['correo'])
                  );
              },

            ),
          ) :  InkWell(
            child: const  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_add_alt, color: Colors.blueGrey,),
                  SizedBox(width: 20,height: 60,),
                  Text('Crear contacto nuevo', style: TextStyle(fontSize: 16, color: Colors.blueGrey),),
                ],
              ),

              onTap: (){},
          );
        },
        ),

        floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: const Color.fromRGBO(62,180,137,0.5), child: const Icon(Icons.dialpad, color: Colors.white,),),
    );
  }
}