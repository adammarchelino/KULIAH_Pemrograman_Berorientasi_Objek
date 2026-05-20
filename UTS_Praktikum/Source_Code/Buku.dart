class Buku {
  int _kodeBuku;
  String _judulBuku;
  String _penulis;
  int _tahunTerbit;
  bool statusDipinjam = false;

  Buku(
    this._kodeBuku,
    this._judulBuku,
    this._penulis,
    this._tahunTerbit,
    this.statusDipinjam,
  );

  set kodeBuku(int kode) {
    _kodeBuku = kode;
  }

  get KodeBuku => _kodeBuku;

  set SetjudulBuku(String judul) {
    _judulBuku = judul;
  }

  get JudulBuku => _judulBuku;

  set Setpenulis(String penulis) {
    _penulis = penulis;
  }

  get Penulis => _penulis;

  set tahunTerbit(int tahun) {
    _tahunTerbit = tahun;
  }

  get gTahunTerbit => _tahunTerbit;

  Buku.denganKode(this._kodeBuku)
    : _judulBuku = 'Stoicism',
      _penulis = 'Adam Marchelino',
      _tahunTerbit = 2020,
      statusDipinjam = false;

  Buku.denganJudul(this._judulBuku)
    : _kodeBuku = 11,
      _penulis = 'James Clear',
      _tahunTerbit = 2018,
      statusDipinjam = false;

  tampilkanInfo() {
    print('Kode Buku: $_kodeBuku');
    print('Judul Buku: $_judulBuku');
    print('Penulis: $_penulis');
    print('Tahun Terbit: $_tahunTerbit');
    print('Status Dipinjam: ${statusDipinjam ? "Dipinjam" : "Tersedia"}');
  }

  pinjamBuku() {
    if (!statusDipinjam) {
      statusDipinjam = true;
      print('Anda berhasil meminjam buku "${_judulBuku}".');
    } else {
      print('Maaf, buku "${_judulBuku}" sedang dipinjam oleh orang lain.');
    }
  }

  kembalikanBuku() {
    if (statusDipinjam) {
      statusDipinjam = false;
      print('Buku "${_judulBuku}" tersedia untuk dipinjam.');
    } else {
      print('Buku "${_judulBuku}" sedang dipinjam.');
    }
  }
}
