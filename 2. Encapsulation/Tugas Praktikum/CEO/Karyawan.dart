class Karyawan {
  String _nama;
  late String _posisi;
  late int _gajiPokok;
  late int _tunjangan;
  late int _potongan;

  Karyawan(this._nama, String posisi) {
    if (posisi.toLowerCase() == "staff") {
      _posisi = "Staff";
      _gajiPokok = 3000000;
      _tunjangan = 300000;
      _potongan = 50000;
    } else if (posisi.toLowerCase() == "supervisor") {
      _posisi = "Supervisor";
      _gajiPokok = 5000000;
      _tunjangan = 600000;
      _potongan = 100000;
    } else if (posisi.toLowerCase() == "manager") {
      _posisi = "Manager";
      _gajiPokok = 7000000;
      _tunjangan = 1200000;
      _potongan = 200000;
    } else {
      throw Exception("Posisi tidak dikenal: $posisi");
    }
  }

  // GETTER
  String get nama => _nama;
  String get posisi => _posisi;
  int get gajiPokok => _gajiPokok;
  int get tunjangan => _tunjangan;
  int get potongan => _potongan;

  void setPosisi(String posisiBaru) {
    if (posisiBaru.toLowerCase() == "staff") {
      _posisi = "Staff";
      _gajiPokok = 3000000;
      _tunjangan = 300000;
      _potongan = 50000;
    } else if (posisiBaru.toLowerCase() == "supervisor") {
      _posisi = "Supervisor";
      _gajiPokok = 5000000;
      _tunjangan = 500000;
      _potongan = 100000;
    } else if (posisiBaru.toLowerCase() == "manager") {
      _posisi = "Manager";
      _gajiPokok = 8000000;
      _tunjangan = 800000;
      _potongan = 200000;
    }
  }

  int hitungGaji() {
    return _gajiPokok + _tunjangan - _potongan;
  }

  void tampilkanInfo() {
    print("===========================");
    print("Nama Karyawan   : $_nama");
    print("Posisi          : $_posisi");
    print("Gaji Pokok      : $_gajiPokok");
    print("Tunjangan       : $_tunjangan");
    print("Potongan        : $_potongan");
    print("Gaji Akhir      : ${hitungGaji()}");
    print("===========================");
  }
}
