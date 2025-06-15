import 'package:app_prueba_1/dominio/entidades/message.dart';
//import 'package:app_prueba_1/presentaciones/providers/chat_provider.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class MyMessage extends StatelessWidget {
  final Memsaje message;
  const MyMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
  //  final leerMensaje = context.read<ChatProvider>();

    final colors = Theme.of(context).colorScheme;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          //height: 5,      //width: 2,
          decoration: BoxDecoration(
            //color: Colors.black,
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Padding(
            //padding: const EdgeInsets.all(3.0),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              //'Zbot, robotica educativa',
             // leerMensaje.mensajesLista.isNotEmpty  ? leerMensaje.mensajesLista.last.text: '',
              // Replace 'lastMessage' with the actual property you want to display
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
