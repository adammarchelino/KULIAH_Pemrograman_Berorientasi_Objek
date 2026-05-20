class Mahasiswa {
  String namaLengkap;
  String nim;
  String programStudi;
  int tahunMasuk;

  Mahasiswa({
    required this.namaLengkap,
    required this.nim,
    required this.programStudi,
    required this.tahunMasuk,
  });

  int hitungSemester() {
    int tahunSekarang = DateTime.now().year;
    return (tahunSekarang - tahunMasuk) * 2;
  }

  void tampilkanData() {
    print("Nama     :  $namaLengkap");
    print("NIM      :  $nim");
    print("Prodi    :  $programStudi");
    print("Semester :  ${hitungSemester()}");
    print("-----------------------");
  }
}
