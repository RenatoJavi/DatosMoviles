import 'package:flutter/material.dart';
import 'package:mvvm_application_2/modelo/counter_m.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterModel _contadorVM = CounterModel();
  //expongo el dato del modelo a la vista
  int get valor => _contadorVM.contador;
  //llamar al moelo
  void incremento() {
    _contadorVM.incrementar();
    notifyListeners();// ¡Importante! Notifica a la vista que el estado ha cambiado
  }

  void decremento() {
    _contadorVM.decrementar();
    notifyListeners();// ¡Importante! Notifica a la vista que el estado ha cambiado
  }
}
