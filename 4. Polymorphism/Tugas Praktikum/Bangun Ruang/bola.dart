import 'dart:math';
import 'bangun_ruang.dart';

class Bola extends BangunRuang {
  Bola(double jariJari) : super(jariJari, jariJari, jariJari);

  @override
  double volume() => (4 / 3) * pi * dimensi1 * dimensi1 * dimensi1;

  @override
  double luasPenampang() => 4 * pi * dimensi1 * dimensi1;
}
