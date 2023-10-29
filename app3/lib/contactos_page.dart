import 'package:flutter/material.dart';

void main() => runApp(const contactos());

class contactos extends StatelessWidget {
  const contactos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contactos'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      );
  }
}