abstract class Properti {
  String _nama;

  Properti(String nama) : _nama = nama;

  String get nama => _nama;

  double hargaJual(); // abstract method
}
