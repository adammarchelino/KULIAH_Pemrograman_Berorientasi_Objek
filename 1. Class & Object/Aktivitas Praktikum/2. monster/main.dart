import 'monster.dart';

void main() {
  Monster z = Monster();
  z.nama = "Balmond";
  print(z.nama);

  z.menyerang();
  z.diserang(30);

  z.menyerang();
  z.diserang(50);
  z.diserang(30);
  z.diserang(10);

  z.menyerang();
}
