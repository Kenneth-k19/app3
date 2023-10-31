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
        body: SizedBox(
          width: double.infinity,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                child: Text('P',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 50
                  ),
                ),
              ),
        
              const SizedBox(height: 20,),
              const Text(
                'Pascualillo',
                style: TextStyle(fontSize: 25),
                ),

              const SizedBox(height: 15,),
              Container(
                height: 78,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black12),
                    
                    bottom: BorderSide(color: Colors.black12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child:  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        const Spacer(),
                        Column(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.phone)),
                            const Text('Llamar'),
                          ],
                        ),
                        const Spacer(),
                  
                        Column(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.message)),
                            const Text('Mensaje de texto'),
                          ],
                        ),
                        const Spacer(),
                  
                        Column(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.videocam),),
                            const Text('Video'),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}