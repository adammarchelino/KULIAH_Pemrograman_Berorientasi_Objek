import 'karyawan.dart';

class Direktur extends Karyawan {
  double _labaPerusahaan;

  Direktur(String nama, double gapok, double tunjangan, double labaPerusahaan)
    : _labaPerusahaan = labaPerusahaan,
      super(nama, gapok, tunjangan);

  @override
  double gaji() => super.gaji() + (0.05 * _labaPerusahaan);
}
