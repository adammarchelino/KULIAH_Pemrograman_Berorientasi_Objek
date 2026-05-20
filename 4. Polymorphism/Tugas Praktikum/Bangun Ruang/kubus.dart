import 'bangun_ruang.dart';

class Kubus extends BangunRuang {
  Kubus(double rusuk) : super(rusuk, rusuk, rusuk);

  @override
  double luasPenampang([bool tanpaTutup = false]) {
    int jumlahSisi = tanpaTutup ? 5 : 6;
    return jumlahSisi * dimensi1 * dimensi1;
  }
}
