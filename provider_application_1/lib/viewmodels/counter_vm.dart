//el view modelo , es el que estará notificando a todos cuando de actualice
import 'package:flutter/material.dart';
import 'package:provider_application_1/models/counter_model.dart';

class CounterVm extends ChangeNotifier {
  //instacia del mdelo
  final CounterModel _counterModel = CounterModel();
  //Hay que exponer el modelo del dato en  la vista
  //la variable 'dato' se mostrará en la vista
  int get dato => _counterModel.contador;

  //el Viewmodel  interactua con la vista, entonces
  //que es lo que la vista puede llamar o pedir?
  void incrementarContador() {
    _counterModel.incrementar();
    notifyListeners(); //notifico a todos
  }

  void decrementarContador() {
    _counterModel.decrementar();
    notifyListeners();
  }
}
