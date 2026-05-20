import 'pegawai.dart';

void main() {
  Pegawai heru = Pegawai.Manajer("Heru");
  Pegawai bambang = Pegawai.kepalaBagian("Bambang", "Riset dan Pengembangan");
  Pegawai siska = Pegawai.kepalaBagian("Siska", "Pemasaran");
  Pegawai aldo = Pegawai.staff("Aldo", "Riset dan Pengembangan");
  Pegawai tiara = Pegawai.staff("Tiara", "Pemasaran");

  heru.jumlahHariKerja = 18;
  bambang.jumlahHariKerja = 22;
  siska.jumlahHariKerja = 20;
  aldo.jumlahHariKerja = 15;
  tiara.jumlahHariKerja = 22;

  heru.infoGaji();
  bambang.infoGaji();
  siska.infoGaji();
  aldo.infoGaji();
  tiara.infoGaji();
}
