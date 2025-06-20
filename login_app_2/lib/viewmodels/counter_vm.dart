import 'package:flutter/material.dart';
import 'package:login_app_2/models/counter_model.dart';

class CounterVM extends ChangeNotifier {
  //instancio el modelo
  final CounterModel _counterModel = CounterModel();

  //exponer el dato del Modeo a la Vista
  //el dato del modelo es 'Contador'
  int get counterValue => _counterModel.contador;
  

  //llamar a los metodos de conter model

  void incremetarCounter() {
    _counterModel.incrementar();
    notifyListeners();
  }

  void decrementarCounter() {
    _counterModel.decrementar();
    notifyListeners();// es un metodo magico del ChangeNotifier , que notifica a los cosumidores
  }
}
