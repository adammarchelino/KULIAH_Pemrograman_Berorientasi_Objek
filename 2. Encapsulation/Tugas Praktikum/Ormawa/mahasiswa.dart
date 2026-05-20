class Mahasiswa {
  String _namaLengkap;
  String _nim;
  String _programStudi;
  int _tahunMasuk;

  Mahasiswa({
    required String namaLengkap,
    required String nim,
    required String programStudi,
    required int tahunMasuk,
  }) : _namaLengkap = namaLengkap,
       _nim = nim,
       _programStudi = programStudi,
       _tahunMasuk = tahunMasuk;

  String get namaLengkap => _namaLengkap;
  String get nim => _nim;
  String get programStudi => _programStudi;

  int _hitungSemester() {
    int tahunSekarang = DateTime.now().year;
    return (tahunSekarang - _tahunMasuk) * 2;
  }

  void tampilkanData() {
    print("Nama     : $_namaLengkap");
    print("NIM      : $_nim");
    print("Prodi    : $_programStudi");
    print("Semester : ${_hitungSemester()}");
    print("-----------------------");
  }
}
