//necesito los parametros y metofo
class CounterModel {
  int _contador = 0;
  int get contador => _contador;
  String nombre = 'ZBOT';
  void incrementar() {
    _contador++;
  }

  void decrementar() {
    _contador--;
  }
}
