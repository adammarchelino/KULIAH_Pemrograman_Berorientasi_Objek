import 'karyawan.dart';

class Manajer extends Karyawan {
  double _bonusKinerja;

  Manajer(String nama, double gapok, double tunjangan, double bonusKinerja)
    : _bonusKinerja = bonusKinerja,
      super(nama, gapok, tunjangan);

  double get bonusKinerja => _bonusKinerja;

  @override
  double gaji() => super.gaji() + _bonusKinerja;
}
