import 'package:app_prueba_1/config/helpers/get_yes_no_ansewer.dart';
import 'package:app_prueba_1/dominio/entidades/message.dart';

import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrolContrador = ScrollController();
  final getYesNoAnswer = GetYesNoAnsewer();
  List<Memsaje> mensajesLista = [
    Memsaje(text: 'Hola bonita', fromQuien: FromQuien.mio, imageUrl: ''),
    Memsaje(text: 'Hola flaco', fromQuien: FromQuien.ella, imageUrl: ''),
  ];

  Future<void> ellaRespuesta() async {
    final herMensaje = await getYesNoAnswer.getAnswer();
    mensajesLista.add(herMensaje);
    notifyListeners();
    moveScrolToBoton();
  }

  //Método: el future devuelve un solo valor, se completa una sola vez, se usa generalmente en op. asincronas
  Future<void> sendMensaje(String text) async {
    if (text.isEmpty) return; // si esta vacio el texto no envia nada
    final newMensaje = Memsaje(text: text, fromQuien: FromQuien.mio);

    mensajesLista.add(newMensaje);
    if (text.endsWith('?')) {
      ellaRespuesta();
    }

    notifyListeners(); //para notificar a todo los que esten escuchando
    moveScrolToBoton();
  }

  Future<void> moveScrolToBoton() async {
    await Future.delayed(Duration(milliseconds: 1000));
    chatScrolContrador.animateTo(
      chatScrolContrador.position.maxScrollExtent,
      duration: Duration(microseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
