import 'Karyawan.dart';

class CEO {
  String _namaCEO = '';
  String _perusahaan = '';
  List<Karyawan> _daftarKaryawan = [];

  // this untuk menyatakan bahwasanya namaceo dan perusahaan adalah properti dari class bukan param
  CEO(this._namaCEO, this._perusahaan);

  String get namaCEO => _namaCEO;
  String get perusahaan => _perusahaan;

  void tambahKaryawan(Karyawan karyawanBaru) {
    _daftarKaryawan.add(karyawanBaru);
  }

  String? hapusKaryawan(String namaKaryawan) {
    for (var k in _daftarKaryawan) {
      if (k.nama == namaKaryawan) {
        _daftarKaryawan.remove(k);
        return namaKaryawan;
      }
    }
    return null;
  }

  void tampilkanKaryawan() {
    if (_daftarKaryawan.isEmpty) {
      print("Belum ada karyawan di perusahaan.");
      return;
    }

    for (var k in _daftarKaryawan) {
      print(
        "Nama: ${k.nama}, Posisi: ${k.posisi}, Gaji Total: ${k.hitungGaji()}",
      );
    }
  }

  void editKaryawan(String namaKaryawan, String posisiBaru) {
    for (var k in _daftarKaryawan) {
      if (k.nama == namaKaryawan) {
        k.setPosisi(posisiBaru);
        print("Data karyawan berhasil diperbarui.");
        return;
      }
    }

    print("Karyawan dengan nama tersebut tidak ditemukan.");
  }

  int hitungTotalGaji() {
    int total = 0;

    for (var k in _daftarKaryawan) {
      total += k.hitungGaji();
    }

    return total;
  }
}
