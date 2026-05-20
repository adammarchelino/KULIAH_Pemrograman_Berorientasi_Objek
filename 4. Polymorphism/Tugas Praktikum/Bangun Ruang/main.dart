import 'kubus.dart';
import 'balok.dart';
import 'tabung.dart';
import 'kerucut.dart';
import 'bola.dart';

void main() {
  print("===== SIMULASI BANGUN RUANG =====\n");

  Kubus kubus = Kubus(10);
  print("--- Kubus (rusuk = 10) ---");
  print("Volume                        : ${kubus.volume()}");
  print("Luas penampang (dengan tutup) : ${kubus.luasPenampang()}");
  print("Luas penampang (tanpa tutup)  : ${kubus.luasPenampang(true)}\n");

  Balok balok = Balok(10, 5, 4);
  print("--- Balok (10 x 5 x 4) ---");
  print("Volume                        : ${balok.volume()}");
  print("Luas penampang                : ${balok.luasPenampang()}\n");

  Tabung tabung = Tabung(7, 14);
  print("--- Tabung (r = 7, t = 14) ---");
  print(
    "Volume                        : ${tabung.volume().toStringAsFixed(2)}",
  );
  print(
    "Luas penampang (dengan tutup) : ${tabung.luasPenampang().toStringAsFixed(2)}",
  );
  print(
    "Luas penampang (tanpa tutup)  : ${tabung.luasPenampang(true).toStringAsFixed(2)}\n",
  );

  Kerucut kerucut = Kerucut(7, 24);
  print("--- Kerucut (r = 7, t = 24) ---");
  print(
    "Volume                        : ${kerucut.volume().toStringAsFixed(2)}",
  );
  print(
    "Luas penampang                : ${kerucut.luasPenampang().toStringAsFixed(2)}\n",
  );

  Bola bola = Bola(7);
  print("--- Bola (r = 7) ---");
  print("Volume                        : ${bola.volume().toStringAsFixed(2)}");
  print(
    "Luas penampang                : ${bola.luasPenampang().toStringAsFixed(2)}",
  );
}
