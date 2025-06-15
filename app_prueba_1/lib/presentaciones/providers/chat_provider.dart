import 'package:app_prueba_1/dominio/entidades/message.dart';
import 'package:app_prueba_1/presentaciones/widgets/chat/my_message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Memsaje> mensajes = [
    Memsaje(text: 'Hola bonita', fromQuien: FromQuien.mio, imageUrl: ''),
    Memsaje(text: 'Hola flaco', fromQuien: FromQuien.ella, imageUrl: ''),
  ];
}

//Método: el future devuelve un solo valor, se completa una sola vez, se usa generalmente en op. asincronas
Future<void> sendMensaje() async {
  //TODO: IMPLEMENRAR METODO
}

