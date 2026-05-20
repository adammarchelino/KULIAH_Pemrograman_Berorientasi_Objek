import 'dart:math';
import 'bangun_ruang.dart';

class Tabung extends BangunRuang {
  Tabung(double jariJari, double tinggi) : super(jariJari, tinggi, 0);

  @override
  double volume() => pi * dimensi1 * dimensi1 * dimensi2;

  @override
  double luasPenampang([bool tanpaTutup = false]) {
    double selimut = 2 * pi * dimensi1 * dimensi2;
    double alas = pi * dimensi1 * dimensi1;
    return tanpaTutup ? selimut + alas : selimut + 2 * alas;
  }
}
