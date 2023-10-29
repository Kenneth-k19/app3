import 'package:flutter/material.dart';

void main() => runApp(const home());

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/contactos');
                }, 
                child: const Text('Contactos'),
                ),
            ],
          ),
        ),
      );
  }
}