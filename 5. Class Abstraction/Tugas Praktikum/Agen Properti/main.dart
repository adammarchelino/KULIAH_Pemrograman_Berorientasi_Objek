import 'dart:io';
import 'properti.dart';
import 'tanah.dart';
import 'sawah.dart';
import 'rumah.dart';
import 'mobil.dart';

String formatRupiah(double angka) {
  String hasil = angka.toStringAsFixed(0);
  String balik = hasil.split('').reversed.join();
  String titik = '';
  for (int i = 0; i < balik.length; i++) {
    if (i > 0 && i % 3 == 0) titik += '.';
    titik += balik[i];
  }
  return 'Rp ' + titik.split('').reversed.join();
}

void main() {
  // Daftar listing properti yang tersedia di agen
  List<Properti> katalog = [
    Tanah("Tanah Kavling Surabaya", 200, 3000000),
    Tanah("Tanah Kavling Sidoarjo", 150, 2500000),
    Sawah("Sawah Sidoarjo", 500, 150000, 25000000),
    Sawah("Sawah Mojokerto", 300, 120000, 15000000),
    Rumah("Rumah Tipe 45 Malang", 500000, 800000, 45),
    Rumah("Rumah Tipe 60 Surabaya", 700000, 1200000, 60),
    Mobil("Toyota Avanza 2018", 180000000, 30000000),
    Mobil("Honda Brio 2020", 155000000, 20000000),
  ];

  print(" SIMULASI AGEN PROPERTI \n");
  print("Daftar properti tersedia:");
  for (int i = 0; i < katalog.length; i++) {
    print(
      "${i + 1}. ${katalog[i].nama} - ${formatRupiah(katalog[i].hargaJual())}",
    );
  }

  print("\nMasukkan nomor properti yang ingin dibeli.");
  print("Ketik 0 jika sudah selesai memilih.\n");

  List<Properti> keranjang = [];

  while (true) {
    stdout.write("Pilih nomor properti: ");
    String? input = stdin.readLineSync();
    int pilihan = int.tryParse(input ?? '') ?? -1;

    if (pilihan == 0) break;

    if (pilihan < 1 || pilihan > katalog.length) {
      print("Nomor tidak valid, coba lagi.\n");
      continue;
    }

    Properti dipilih = katalog[pilihan - 1];

    if (keranjang.contains(dipilih)) {
      print("${dipilih.nama} sudah ada di keranjang.\n");
      continue;
    }

    keranjang.add(dipilih);
    print("${dipilih.nama} berhasil ditambahkan.\n");
  }

  if (keranjang.isEmpty) {
    print("\nTidak ada properti yang dipilih.");
    return;
  }

  print("\n RINCIAN PEMBELIAN ");
  double total = 0;
  for (Properti p in keranjang) {
    double harga = p.hargaJual();
    total += harga;
    print("${p.nama}");
    print("Harga Jual : ${formatRupiah(harga)}\n");
  }

  print("");
  print("Total Harga Jual : ${formatRupiah(total)}");
}
