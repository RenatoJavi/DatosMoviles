enum FromQuien { mio, ella }

class Memsaje {
  final String text;
  String? imageUrl;
  final FromQuien fromQuien;

  Memsaje({required this.text, this.imageUrl, required this.fromQuien});
}
