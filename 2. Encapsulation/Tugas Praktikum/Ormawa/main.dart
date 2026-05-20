import 'mahasiswa.dart';
import 'dosen.dart';
import 'ormawa.dart';

void main() {
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

  Mahasiswa m4 = Mahasiswa(
    namaLengkap: "Budi Prasetyo",
    nim: "3620220004",
    programStudi: "Teknik Informatika",
    tahunMasuk: 2023,
  );

  Mahasiswa m5 = Mahasiswa(
    namaLengkap: "Citra Dewi",
    nim: "3620220005",
    programStudi: "Teknik Informatika",
    tahunMasuk: 2024,
  );

  Mahasiswa m6 = Mahasiswa(
    namaLengkap: "Dimas Arya",
    nim: "3620220006",
    programStudi: "MBP",
    tahunMasuk: 2023,
  );

  Mahasiswa m7 = Mahasiswa(
    namaLengkap: "Eka Putri",
    nim: "3620220007",
    programStudi: "MBP",
    tahunMasuk: 2024,
  );

  Mahasiswa m8 = Mahasiswa(
    namaLengkap: "Fajar Nugroho",
    nim: "3620220008",
    programStudi: "Teknik Informatika",
    tahunMasuk: 2025,
  );

  Mahasiswa m9 = Mahasiswa(
    namaLengkap: "Gita Lestari",
    nim: "3620220009",
    programStudi: "MBP",
    tahunMasuk: 2023,
  );

  Mahasiswa m10 = Mahasiswa(
    namaLengkap: "Hendra Wijaya",
    nim: "3620220010",
    programStudi: "Teknik Informatika",
    tahunMasuk: 2024,
  );

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

  Ormawa ormawa1 = Ormawa(
    namaOrmawa: "HMTI - Himpunan Mahasiswa Teknik Informatika",
    bidangKegiatan: "Teknologi dan Pemrograman",
    dosenPembina: d1,
    anggota: [m1, m3, m4, m5, m8, m10],
  );

  Ormawa ormawa2 = Ormawa(
    namaOrmawa: "HMMBP - Himpunan Mahasiswa Manajemen Bisnis Pariwisata",
    bidangKegiatan: "Bisnis dan Pariwisata",
    dosenPembina: d2,
    anggota: [m2, m6, m7, m9, m3, m1],
  );

  print("===== INFORMASI ORMAWA =====\n");
  ormawa1.tampilkanInfo();
  print('');
  ormawa2.tampilkanInfo();
}
