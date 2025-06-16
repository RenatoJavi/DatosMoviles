
// este es nustro dato puro y la logica del negocio(incrementar/decrementar)
class CounterModel {
  int _contador = 0;
  int get contador => _contador;
  void incrementar() {
    _contador++;
  }

  void decrementar() {
    _contador--;
  }
}
