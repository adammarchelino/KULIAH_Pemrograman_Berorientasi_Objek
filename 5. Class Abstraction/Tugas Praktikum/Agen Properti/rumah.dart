import 'properti.dart';

class Rumah extends Properti {
  double _hargaTipe;
  double _hargaLokasi;
  double _luasBangunan;

  Rumah(String nama, double hargaTipe, double hargaLokasi, double luasBangunan)
    : _hargaTipe = hargaTipe,
      _hargaLokasi = hargaLokasi,
      _luasBangunan = luasBangunan,
      super(nama);

  @override
  double hargaJual() => (_hargaTipe + _hargaLokasi) * _luasBangunan;
}
