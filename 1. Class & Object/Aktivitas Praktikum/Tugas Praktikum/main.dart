import "mahasiswa.dart";
import "dosen.dart";

void main() {
  print("===DATA MAHASISWA===");

  Mahasiswa m1 = Mahasiswa(
    namaLengkap: "Adam Marchelino",
    nim: "3620220001",
    programStudi: "Teknik Informatika",
    tahunMasuk: 2025,
  );

  Mahasiswa m2 = Mahasiswa(
    namaLengkap: "Hawa Marchelina Eleanor",
    nim: "360220002",
    programStudi: "MBP",
    tahunMasuk: 2023,
  );

  Mahasiswa m3 = Mahasiswa(
    namaLengkap: "Azizah Marchelina Fitriani",
    nim: "3620220003",
    programStudi: "Teknik Informatika",
    tahunMasuk: 2024,
  );

  m1.tampilkanData();
  m2.tampilkanData();
  m3.tampilkanData();

  print('');
  print("===DATA DOSEN===");
  Dosen d1 = Dosen(
    namaLengkap: "Dr. Ir. Budi Santoso, M.T.",
    nidn: "123456789",
    prodiHomeBase: "Teknik Informatika",
    bidangKeilmuan: "Kecerdasan Buatan",
    mataKuliahDiampu: ["Pemrograman Lanjut", "Kecerdasan Buatan"],
  );

  Dosen d2 = Dosen(
    namaLengkap: "Dr. Ir. Siti Aminah, M.T.",
    nidn: "987654321",
    prodiHomeBase: "MBP",
    bidangKeilmuan: "Manajemen Bisnis Pariwisata",
    mataKuliahDiampu: ["Manajemen Bisnis Pariwisata", "Sistem Informasi"],
  );

  Dosen d3 = Dosen(
    namaLengkap: "Dr. Ir. Agus Prasetyo, M.T.",
    nidn: "456789123",
    prodiHomeBase: "Teknik Informatika",
    bidangKeilmuan: "Jaringan Komputer",
    mataKuliahDiampu: ["Jaringan Komputer", "Keamanan Informasi"],
  );

  d1.tampilkanData();
  d2.tampilkanData();
  d3.tampilkanData();
}
