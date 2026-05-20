import 'Perpustakaan.dart';
import 'Buku.dart';
import 'TurunanClass_Buku.dart';

void main() {
  Perpustakaan perpustakaan = Perpustakaan();

  Buku buku1 = Buku(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, false);
  Buku buku2 = Buku(2, 'To Kill a Mockingbird', 'Harper Lee', 1960, false);
  Buku buku3 = Buku(3, '1984', 'George Orwell', 1949, false);
  Buku bukufiksi1 = BukuFiksi(
    6,
    'The Hobbit',
    'J.R.R. Tolkien',
    1937,
    false,
    'Fantasy',
  );
  Buku bukufiksi2 = BukuFiksi(
    7,
    'Harry Potter and the Sorcerer\'s Stone',
    'J.K. Rowling',
    1997,
    false,
    'Fantasy',
  );
  Buku bukunonfiksi1 = BukuNonFiksi(
    8,
    'Sapiens: A Brief History of Humankind',
    'Yuval Noah Harari',
    2011,
    false,
    'History',
  );
  Buku bukunonfiksi2 = BukuNonFiksi(
    9,
    'Educated',
    'Tara Westover',
    2018,
    false,
    'Memoir',
  );

  perpustakaan.tambahBuku(buku1);
  perpustakaan.tambahBuku(buku2);
  perpustakaan.tambahBuku(buku3);
  perpustakaan.tambahBuku(bukufiksi1);
  perpustakaan.tambahBuku(bukufiksi2);
  perpustakaan.tambahBuku(bukunonfiksi1);
  perpustakaan.tambahBuku(bukunonfiksi2);

  Buku buku10 = Buku.denganKode(10);
  perpustakaan.tambahBuku(buku10);

  Buku buku5 = Buku.denganJudul('Moby Dick');
  perpustakaan.tambahBuku(buku5);

  print('\nDaftar Buku di Perpustakaan:');
  perpustakaan.TampilkanSemuaBuku();

  print('\nMeminjam buku "1984":');
  perpustakaan.pinjamBuku(buku3);

  print('\nDaftar Buku setelah meminjam "1984":');
  perpustakaan.TampilkanSemuaBuku();

  print('\nMengembalikan buku "1984":');
  perpustakaan.kembalikanBuku(buku3);

  print('\nDaftar Buku setelah mengembalikan "1984":');
  perpustakaan.TampilkanSemuaBuku();

  print('\nMeminjam buku "Stoicism":');
  perpustakaan.pinjamBuku(buku10);

  print('\nDaftar Buku setelah meminjam "Stoicism":');
  perpustakaan.TampilkanSemuaBuku();

  print('\nMeminjam buku "Moby Dick":');
  perpustakaan.pinjamBuku(buku5);

  print('\nDaftar Buku setelah meminjam "Moby Dick":');
  perpustakaan.TampilkanSemuaBuku();

  print("Mencoba meminjam buku fiksi");
  perpustakaan.pinjamBuku(bukufiksi1);
  perpustakaan.pinjamBuku(bukufiksi2);

  print('\nDaftar Buku setelah meminjam buku fiksi:');
  perpustakaan.TampilkanSemuaBuku();

  print("Mencoba mengembalikan buku fiksi");
  perpustakaan.kembalikanBuku(bukufiksi1);
  perpustakaan.kembalikanBuku(bukufiksi2);

  print('\nDaftar Buku setelah mengembalikan buku fiksi:');
  perpustakaan.TampilkanSemuaBuku();

  print("Mencoba meminjam buku non-fiksi");
  perpustakaan.pinjamBuku(bukunonfiksi1);
  perpustakaan.pinjamBuku(bukunonfiksi2);

  print('\nDaftar Buku setelah meminjam buku non-fiksi:');
  perpustakaan.TampilkanSemuaBuku();

  print("Mencoba mengembalikan buku non-fiksi");
  perpustakaan.kembalikanBuku(bukunonfiksi1);
  perpustakaan.kembalikanBuku(bukunonfiksi2);

  print('\nDaftar Buku setelah mengembalikan buku non-fiksi:');
  perpustakaan.TampilkanSemuaBuku();

  print("peminjaman buku yang berhasil:");
  perpustakaan.pinjamBuku(buku3);
  print("\nMencoba meminjam buku yang sudah dipinjam:");
  perpustakaan.pinjamBuku(buku3);
}
