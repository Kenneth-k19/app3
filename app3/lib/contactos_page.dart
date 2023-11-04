import 'package:app3/card_row.dart';
import 'package:flutter/material.dart';


void main() => runApp(const contactos());

class contactos extends StatelessWidget {
  const contactos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: double.infinity,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xffdc3c6c),
                  radius: 50,
                  child: Text('P',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, 
                        fontSize: 50,
                        color: Colors.white,
                    ),
                  ),
                ),
          
                const SizedBox(height: 50,),
                const Text(
                  'Pascualillo',
                  style: TextStyle(fontSize: 25,),
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
                              IconButton(onPressed: (){}, icon: const Icon(Icons.phone,color: Colors.blueGrey,)),
                              const Text('Llamar',style: TextStyle(color: Colors.blueGrey),),
                            ],
                          ),
                          const Spacer(),
                    
                          Column(
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.message,color: Colors.blueGrey,)),
                              const Text('Mensaje de texto',style: TextStyle(color: Colors.blueGrey),),
                            ],
                          ),
                          const Spacer(),
                    
                          Column(
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.videocam,color: Colors.blueGrey,),),
                              const Text('Video',style: TextStyle(color: Colors.blueGrey),),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),
                 Card(
                  shadowColor: const Color.fromRGBO(0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'Informacion de contacto',
                          style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 15,
                          ),
                          ),
                      ),
                      const SizedBox(height: 12,),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.phone)),
                          const SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('+504 9902-9311', 
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),

                              Text('Celular',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),

                          const Spacer(),

                          IconButton(onPressed: (){}, icon: const Icon(Icons.videocam)),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.message)),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      const RowCard(icono: 'assets/images/whatsapp.png', mensaje: 'Enviar mensaje a ', numero: '+504 9902-9311'),
                      const SizedBox(height: 25,),
                      const RowCard(icono: 'assets/images/whatsapp.png', mensaje: 'Llamar a ', numero: '+504 9902-9311'),
                      const SizedBox(height: 25,),
                      const RowCard(icono: 'assets/images/whatsapp.png', mensaje: 'Videollamar a ', numero: '+504 9902-9311'),
                      const SizedBox(height: 25,),
                      const RowCard(icono: 'assets/images/telegrama.png', mensaje: 'Mensaje al ', numero: '+504 9902-9311'),
                      const SizedBox(height: 25,),
                      const RowCard(icono: 'assets/images/telegrama.png', mensaje: 'Llamada de voz al ', numero: '+504 9902-9311'),
                      const SizedBox(height: 25,),
                      const RowCard(icono: 'assets/images/telegrama.png', mensaje: 'Videollamada al ', numero: '+504 9902-9311'),
                      const SizedBox(height: 25,),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      );
  }
}