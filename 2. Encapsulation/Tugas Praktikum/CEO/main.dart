import 'Karyawan.dart';
import 'CEO.dart';

void main() {
  CEO ceo = CEO("Adam Marchelino", "Sigma Corp");

  ceo.tambahKaryawan(Karyawan("Budi", "Staff"));
  ceo.tambahKaryawan(Karyawan("Siti", "Supervisor"));
  ceo.tambahKaryawan(Karyawan("Joko", "Manager"));

  print("=== DAFTAR KARYAWAN ===");
  ceo.tampilkanKaryawan();

  print("\n=== EDIT KARYAWAN ===");
  ceo.editKaryawan("Budi", "Manager");

  var hasil = ceo.hapusKaryawan("Siti");
  print("\n=== Sedang Menghapus Karyawan ===");
  print("=== KARYAWAN $hasil Telah Dihapus ===");

  print("\n=== SETELAH PERUBAHAN ===");
  ceo.tampilkanKaryawan();

  print("\nTotal biaya gaji perusahaan: ${ceo.hitungTotalGaji()}");
}
