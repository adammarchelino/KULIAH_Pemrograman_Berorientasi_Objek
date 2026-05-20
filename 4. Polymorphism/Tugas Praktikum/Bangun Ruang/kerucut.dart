import 'dart:math';
import 'bangun_ruang.dart';

class Kerucut extends BangunRuang {
  Kerucut(double jariJari, double tinggi) : super(jariJari, tinggi, 0);

  @override
  double volume() => (1 / 3) * pi * dimensi1 * dimensi1 * dimensi2;

  @override
  double luasPenampang() {
    double garisPelukis = sqrt(dimensi1 * dimensi1 + dimensi2 * dimensi2);
    return pi * dimensi1 * (dimensi1 + garisPelukis);
  }
}
