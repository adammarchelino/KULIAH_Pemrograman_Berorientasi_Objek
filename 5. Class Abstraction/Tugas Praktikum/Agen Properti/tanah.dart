import 'properti.dart';

class Tanah extends Properti {
  double _luas;
  double _hargaPerMeter;

  Tanah(String nama, double luas, double hargaPerMeter)
    : _luas = luas,
      _hargaPerMeter = hargaPerMeter,
      super(nama);

  @override
  double hargaJual() => _luas * _hargaPerMeter;
}
