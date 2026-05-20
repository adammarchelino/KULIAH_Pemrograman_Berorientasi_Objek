import 'Buku.dart';

class BukuFiksi extends Buku {
  String _genre;

  BukuFiksi(
    int kodeBuku,
    String judulBuku,
    String penulis,
    int tahunTerbit,
    bool statusDipinjam,
    this._genre,
  ) : super(kodeBuku, judulBuku, penulis, tahunTerbit, statusDipinjam);

  set SetGenre(String genre) {
    _genre = genre;
  }

  get getGenre => _genre;
}

class BukuNonFiksi extends Buku {
  String _bidang;

  BukuNonFiksi(
    int kodeBuku,
    String judulBuku,
    String penulis,
    int tahunTerbit,
    bool statusDipinjam,
    this._bidang,
  ) : super(kodeBuku, judulBuku, penulis, tahunTerbit, statusDipinjam);

  set SetBidang(String bidang) {
    _bidang = bidang;
  }

  get getBidang => _bidang;
}
