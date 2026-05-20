import 'mahasiswa.dart';
import 'dosen.dart';

class Ormawa {
  String _namaOrmawa;
  String _bidangKegiatan;
  Dosen _dosenPembina;
  List<Mahasiswa> _anggota;

  Ormawa({
    required String namaOrmawa,
    required String bidangKegiatan,
    required Dosen dosenPembina,
    required List<Mahasiswa> anggota,
  }) : _namaOrmawa = namaOrmawa,
       _bidangKegiatan = bidangKegiatan,
       _dosenPembina = dosenPembina,
       _anggota = anggota;

  void _tampilkanDosen() {
    print("Dosen Pembina    : ${_dosenPembina.namaLengkap}");
    print("NIDN             : ${_dosenPembina.nidn}");
  }

  void _tampilkanAnggota() {
    print("Daftar Anggota   :");
    for (int i = 0; i < _anggota.length; i++) {
      print(
        "  ${i + 1}. ${_anggota[i].namaLengkap} | NIM: ${_anggota[i].nim} | Prodi: ${_anggota[i].programStudi}",
      );
    }
  }

  void tampilkanInfo() {
    print("==============================");
    print("Nama Ormawa      : $_namaOrmawa");
    print("Bidang Kegiatan  : $_bidangKegiatan");
    _tampilkanDosen();
    _tampilkanAnggota();
    print("==============================");
  }
}
