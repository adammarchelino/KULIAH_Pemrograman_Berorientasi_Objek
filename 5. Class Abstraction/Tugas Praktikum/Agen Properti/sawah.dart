import 'properti.dart';

class Sawah extends Properti {
  double _luas;
  double _hargaPerMeter;
  double _hargaKomoditi;

  Sawah(String nama, double luas, double hargaPerMeter, double hargaKomoditi)
    : _luas = luas,
      _hargaPerMeter = hargaPerMeter,
      _hargaKomoditi = hargaKomoditi,
      super(nama);

  @override
  double hargaJual() => (_luas * _hargaPerMeter) + _hargaKomoditi;
}
