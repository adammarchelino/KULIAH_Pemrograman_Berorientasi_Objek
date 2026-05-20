class Dosen {
  String _namaLengkap;
  String _nidn;
  String _prodiHomeBase;
  String _bidangKeilmuan;
  List<String> _mataKuliahDiampu;

  Dosen({
    required String namaLengkap,
    required String nidn,
    required String prodiHomeBase,
    required String bidangKeilmuan,
    required List<String> mataKuliahDiampu,
  })  : _namaLengkap = namaLengkap,
        _nidn = nidn,
        _prodiHomeBase = prodiHomeBase,
        _bidangKeilmuan = bidangKeilmuan,
        _mataKuliahDiampu = mataKuliahDiampu;

  String get namaLengkap => _namaLengkap;
  String get nidn => _nidn;

  void tampilkanData() {
    print("Nama Dosen       : $_namaLengkap");
    print("NIDN             : $_nidn");
    print("Prodi Home Base  : $_prodiHomeBase");
    print("Bidang Keilmuan  : $_bidangKeilmuan");
    print("Mata Kuliah yang Diampu:");
    for (var mk in _mataKuliahDiampu) {
      print(" - $mk");
    }
    print("-----------------------------");
  }
}
