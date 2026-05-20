class Karyawan {
  String _nama;
  double _gapok;
  double _tunjangan;

  Karyawan(String nama, double gapok, double tunjangan)
    : _nama = nama,
      _gapok = gapok,
      _tunjangan = tunjangan;

  String get nama => _nama;
  double get gapok => _gapok;
  double get tunjangan => _tunjangan;

  double gaji() => _gapok + _tunjangan;
}
