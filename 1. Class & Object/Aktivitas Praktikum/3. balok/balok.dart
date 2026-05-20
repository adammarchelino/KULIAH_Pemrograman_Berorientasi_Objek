class Balok {
  double? panjang;
  double? lebar;
  double? tinggi;

  double volume() => panjang! * lebar! * tinggi!;

  double luasPenampang() =>
      2 * (panjang! * lebar! + lebar! * tinggi! + panjang! * tinggi!);

  void tampilkanInfo() {
    print(
      "Balok dengan ukuran panjang ${this.panjang}, lebar ${this.lebar}, dan tinggi ${this.tinggi} memiliki penampang seluas ${this.luasPenampang()} dan volume sebesar ${this.volume()}",
    );
  }
}
