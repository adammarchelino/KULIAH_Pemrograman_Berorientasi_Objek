import 'Buku.dart';

class Perpustakaan {
  List<Buku> daftarBuku = [];
  tambahBuku(Buku buku) {
    daftarBuku.add(buku);
    print('Buku "${buku.JudulBuku}" berhasil ditambahkan ke perpustakaan.');
  }

  pinjamBuku(Buku buku) {
    if (daftarBuku.contains(buku)) {
      buku.pinjamBuku();
    } else {
      print('Buku "${buku.JudulBuku}" tidak ditemukan / telah dipinjam.');
    }
  }

  kembalikanBuku(Buku buku) {
    if (daftarBuku.contains(buku)) {
      buku.kembalikanBuku();
    } else {
      print('Buku "${buku.JudulBuku}" tidak ditemukan di perpustakaan.');
    }
  }

  TampilkanSemuaBuku() {
    for (var buku in daftarBuku) {
      buku.tampilkanInfo();
      print('-------------------------');
    }
  }
}
