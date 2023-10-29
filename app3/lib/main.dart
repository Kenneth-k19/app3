import 'package:app3/contactos_page.dart';
import 'package:app3/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        useMaterial3: true,
      ),

      initialRoute: '/home',
      routes: {
        '/home': (context)=> const home(),
        '/contactos':(context)=> const contactos(),
      },
    );
  }
}