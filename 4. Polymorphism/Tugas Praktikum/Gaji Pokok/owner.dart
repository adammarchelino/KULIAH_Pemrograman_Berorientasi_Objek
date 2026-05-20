import 'karyawan.dart';

class Owner extends Karyawan {
  double _labaPerusahaan;

  Owner(String nama, double labaPerusahaan)
    : _labaPerusahaan = labaPerusahaan,
      super(nama, 0, 0);

  @override
  double gaji([bool bulanRamadhan = false]) =>
      bulanRamadhan ? 0.25 * _labaPerusahaan : 0.5 * _labaPerusahaan;
}
