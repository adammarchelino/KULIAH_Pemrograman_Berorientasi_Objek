class Pegawai {
  String _nama = '';
  String _jabatan = '';
  int _gajiPokok = 0;
  int _tunjangan = 0;
  int _potongan = 0;
  int _uangMakan = 0;
  int _uangTransport = 0;

  int jumlahHariKerja = 0;

  Pegawai._({
    required String nama,
    required String jabatan,
    required int gajiPokok,
    required int tunjangan,
    required int potongan,
    required int uangMakan,
    required int uangTransport,
  }) {
    _nama = nama;
    _jabatan = jabatan;
    _gajiPokok = gajiPokok > 0 ? gajiPokok : 0;
    _tunjangan = tunjangan > 0 ? tunjangan : 0;
    _potongan = potongan > 0 ? potongan : 0;
    _uangMakan = uangMakan > 0 ? uangMakan : 0;
    _uangTransport = uangTransport > 0 ? uangTransport : 0;
  }

  Pegawai.Manajer(String nama)
    : this._(
        nama: nama,
        jabatan: 'Manajer',
        gajiPokok: 5000000,
        tunjangan: 2000000,
        potongan: 500000,
        uangMakan: 1000000,
        uangTransport: 500000,
      );

  Pegawai.kepalaBagian(String nama, String divisi)
    : this._(
        nama: nama,
        jabatan: 'Kepala Bagian $divisi',
        gajiPokok: 4000000,
        tunjangan: 1500000,
        potongan: 400000,
        uangMakan: 800000,
        uangTransport: 400000,
      );

  Pegawai.staff(String nama, String divisi)
    : this._(
        nama: nama,
        jabatan: 'Staff $divisi',
        gajiPokok: 3000000,
        tunjangan: 1000000,
        potongan: 300000,
        uangMakan: 600000,
        uangTransport: 300000,
      );

  int _hitungGaji() {
    int totalUangMakan = _uangMakan * jumlahHariKerja;
    int totalUangTransport = _uangTransport * jumlahHariKerja;

    return _gajiPokok +
        _tunjangan +
        totalUangMakan +
        totalUangTransport -
        _potongan;
  }

  String _formatRupiah(int nominal) {
    String strNominal = nominal.toString();
    String formatted = "";
    while (strNominal.length > 3) {
      String tigaDigitTerakhir = strNominal.substring(strNominal.length - 3);
      formatted = ".$tigaDigitTerakhir$formatted";
      strNominal = strNominal.substring(0, strNominal.length - 3);
    }
    formatted = strNominal + formatted;
    return "Rp$formatted,00";
  }

  void infoGaji() {
    int gaji = _hitungGaji();
    print("--------------------");
    print("Nama\t\t\t: $_nama");
    print("Jabatan\t\t\t: $_jabatan");
    print("Jumlah hari kerja\t: $jumlahHariKerja hari");
    print("Gaji bulan ini\t\t: ${_formatRupiah(gaji)}");
    print("-------------------");
  }
}
