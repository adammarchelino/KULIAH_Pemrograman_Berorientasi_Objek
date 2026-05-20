import "dart:io";
import "balok.dart";

void main() {
  print("Penghitung Luas Penampang dan Volume Balok");
  print("==========================================");

  Balok balok = Balok();

  stdout.write("Masukkan ukuran panjang : ");
  balok.panjang = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan ukuran lebar : ");
  balok.lebar = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan ukuran tinggi : ");
  balok.tinggi = double.parse(stdin.readLineSync()!);

  balok.tampilkanInfo();
}
