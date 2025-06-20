class CounterModel {
  //EL MODELO VA A RETORNAR ESTOS DATOS
  int _contador = 0;
  int get contador => _contador;
  void incrementar() {
    _contador++;
  }

  void decrementar() {
    _contador--;
  }
}
