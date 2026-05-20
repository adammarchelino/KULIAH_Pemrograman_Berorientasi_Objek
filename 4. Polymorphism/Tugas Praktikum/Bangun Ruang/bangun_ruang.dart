class BangunRuang {
  double _dimensi1;
  double _dimensi2;
  double _dimensi3;

  BangunRuang(double dimensi1, double dimensi2, double dimensi3)
    : _dimensi1 = dimensi1,
      _dimensi2 = dimensi2,
      _dimensi3 = dimensi3;

  double get dimensi1 => _dimensi1;
  double get dimensi2 => _dimensi2;
  double get dimensi3 => _dimensi3;

  double volume() => _dimensi1 * _dimensi2 * _dimensi3;

  double luasPenampang() =>
      2 *
      (_dimensi1 * _dimensi2 + _dimensi1 * _dimensi3 + _dimensi2 * _dimensi3);
}
