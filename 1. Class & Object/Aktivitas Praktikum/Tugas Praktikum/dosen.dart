class Dosen {
  String namaLengkap;
  String nidn;
  String prodiHomeBase;
  String bidangKeilmuan;
  List<String> mataKuliahDiampu;

  Dosen({
    required this.namaLengkap,
    required this.nidn,
    required this.prodiHomeBase,
    required this.bidangKeilmuan,
    required this.mataKuliahDiampu,
  });

  void tampilkanData() {
    print("Nama Dosen       : $namaLengkap");
    print("NIDN             : $nidn");
    print("Prodi Home Base  : $prodiHomeBase");
    print("Bidang Keilmuan  : $bidangKeilmuan");
    print("Mata Kuliah yang Diampu:");

    for (var mk in mataKuliahDiampu) {
      print(" - $mk");
    }

    print("-----------------------------");
  }
}
