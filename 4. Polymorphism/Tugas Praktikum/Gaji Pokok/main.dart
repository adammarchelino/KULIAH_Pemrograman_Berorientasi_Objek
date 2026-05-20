import 'karyawan.dart';
import 'manajer.dart';
import 'direktur.dart';
import 'owner.dart';

void main() {
  double labaPerusahaan = 200000000;

  Karyawan karyawan = Karyawan("Rena", 5000000, 1000000);
  Manajer manajer = Manajer("Adam", 10000000, 2000000, 3000000);
  Direktur direktur = Direktur("Hendra", 15000000, 3000000, labaPerusahaan);
  Owner owner = Owner("Pak Marchel", labaPerusahaan);

  print(" SIMULASI PENGGAJIAN KARYAWAN \n");
  print("Laba Perusahaan : Rp ${labaPerusahaan.toStringAsFixed(0)}\n");

  print(" Karyawan Biasa (${karyawan.nama})");
  print("Gapok      : Rp ${karyawan.gapok.toStringAsFixed(0)}");
  print("Tunjangan  : Rp ${karyawan.tunjangan.toStringAsFixed(0)}");
  print("Total Gaji : Rp ${karyawan.gaji().toStringAsFixed(0)}\n");

  print(" Manajer (${manajer.nama}) ");
  print("Gapok         : Rp ${manajer.gapok.toStringAsFixed(0)}");
  print("Tunjangan     : Rp ${manajer.tunjangan.toStringAsFixed(0)}");
  print("Bonus Kinerja : Rp ${manajer.bonusKinerja.toStringAsFixed(0)}");
  print("Total Gaji    : Rp ${manajer.gaji().toStringAsFixed(0)}\n");

  print(" Direktur (${direktur.nama}) ");
  print("Gapok      : Rp ${direktur.gapok.toStringAsFixed(0)}");
  print("Tunjangan  : Rp ${direktur.tunjangan.toStringAsFixed(0)}");
  print("Total Gaji : Rp ${direktur.gaji().toStringAsFixed(0)}\n");

  print(" Owner (${owner.nama}) ");
  print("Gaji Bulan Reguler  : Rp ${owner.gaji().toStringAsFixed(0)}");
  print("Gaji Bulan Ramadhan : Rp ${owner.gaji(true).toStringAsFixed(0)}");
}
