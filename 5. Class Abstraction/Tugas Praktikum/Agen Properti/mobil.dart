import 'properti.dart';

class Mobil extends Properti {
  double _hargaMerk;
  double _penyusutan;

  Mobil(String nama, double hargaMerk, double penyusutan)
    : _hargaMerk = hargaMerk,
      _penyusutan = penyusutan,
      super(nama);

  @override
  double hargaJual() => _hargaMerk - _penyusutan;
}
