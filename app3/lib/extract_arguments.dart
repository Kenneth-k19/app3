import 'package:app3/card_row.dart';
import 'package:app3/user_arguments.dart';
import 'package:flutter/material.dart';

class ExtractUserArguments extends StatelessWidget {
  const ExtractUserArguments({super.key});

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as UserArguments;

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
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(62,180,137,1),
                  radius: 50,
                  child: Text(args.nombre[0],
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, 
                        fontSize: 50,
                        color: Colors.white,
                    ),
                  ),
                ),
          
                const SizedBox(height: 50,),
                 Text(
                  args.nombre,
                  style: const TextStyle(fontSize: 25,),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('+504 ${args.numero}', 
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),

                              const Text('Celular',
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

                      const SizedBox(height: 12,),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.email)),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(args.correo, 
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),

                              const Text('Correo Electronico',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),

                          const Spacer(),

                          IconButton(onPressed: (){}, icon: const Icon(Icons.send)),
                        ],
                      ),

                      const SizedBox(height: 30,),
                      RowCard(icono: 'assets/images/whatsapp.png', mensaje: 'Enviar mensaje a ', numero: '+504 ${args.numero}'),
                      const SizedBox(height: 25,),
                      RowCard(icono: 'assets/images/whatsapp.png', mensaje: 'Llamar a ', numero: '+504 ${args.numero}'),
                      const SizedBox(height: 25,),
                      RowCard(icono: 'assets/images/whatsapp.png', mensaje: 'Videollamar a ', numero: '+504 ${args.numero}'),
                      const SizedBox(height: 25,),
                      RowCard(icono: 'assets/images/telegrama.png', mensaje: 'Mensaje al ', numero: '+504 ${args.numero}'),
                      const SizedBox(height: 25,),
                      RowCard(icono: 'assets/images/telegrama.png', mensaje: 'Llamada de voz al ', numero: '+504 ${args.numero}'),
                      const SizedBox(height: 25,),
                      RowCard(icono: 'assets/images/telegrama.png', mensaje: 'Videollamada al ', numero: '+504 ${args.numero}'),
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