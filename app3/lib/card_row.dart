import 'package:flutter/material.dart';

class RowCard extends StatefulWidget{
  const RowCard({
    super.key,
    required this.icono,
    required this.mensaje,
    required this.numero,
    
  });

  final String icono;
  final String numero;
  final String mensaje;

  @override
  State<RowCard> createState() => _RowCardState();
}

class _RowCardState extends State<RowCard>{
  @override
    void initState(){

      super.initState();
    }

    @override
    Widget build(BuildContext context){
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 12,),
          Image.asset(widget.icono,width: 25,),
          const SizedBox(width: 20,),
          Text(
            widget.mensaje,
            style: const TextStyle(fontSize: 15),
          ),

          Text(
            widget.numero,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),

          
        ],
      );
    }
}