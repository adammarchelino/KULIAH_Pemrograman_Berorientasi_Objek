import 'manusia.dart';

void main() {
  Manusia orang1 = Manusia();
  Manusia orang2 = Manusia();

  orang1.nama = 'Andi';
  orang1.jenisKelamin = 'Laki-laki';

  orang2.nama = 'Siti';
  orang2.jenisKelamin = 'Perempuan';

  orang1.berjalan();
  orang2.berlari();
  orang1.Kelamin();
  orang2.Kelamin();
}
