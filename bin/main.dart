import 'dart:io';
import 'Cbuku.dart';
import 'CD.dart';

void main() {
  String? menu;
  int counter = 0;
  int menu2;
  int lokasi = 0;
  List item = [];
  print(" ");
  do {
    print("1. Menambah Data Buku");
    print("2. Menampilkan Sebuah Barang");
    print("3. Meletakkan barang pada Lokasi Tertentu");
    print("4. Menampilkan Seluruh Barang pada lokasi tertentu");
    print("5. Menampilkan Title");
    print("6. Filter Harga");
    print("7. Exit");
    print("Input 1/2/3/4/5/6/7");
    menu = stdin.readLineSync();
    menu2 = int.parse(menu!);

    if (menu2 == 1) {
      String? menubuku;
      int menubuku2;
      do {
        print("1. Menambah Data Buku");
        print("2. Menambah Data Travel Guide");
        print("3. Menambah Data CD");
        print("4. Kembali ke menu utama");
        menubuku = stdin.readLineSync();
        menubuku2 = int.parse(menubuku!);

        if (menubuku2 == 1) {
          print("Masukkan ID");
          String? id2 = stdin.readLineSync();
          int id = int.parse(id2!);

          print("Masukkan Nama");
          String? nama = stdin.readLineSync();

          print("Masukkan Judul");
          String? judul = stdin.readLineSync();

          print("Masukkan ID");
          String? harga2 = stdin.readLineSync();
          int harga = int.parse(harga2!);

          print("Masukkan ISBN");
          String? isbn = stdin.readLineSync();

          print("Masukkan Penulis");
          String? penulis = stdin.readLineSync();

          item.add(Buku(id, nama, judul, harga, isbn, lokasi, penulis));
          counter++;
        }

        if (menubuku2 == 2) {
          print("Masukkan ID");
          String? id2 = stdin.readLineSync();
          int id = int.parse(id2!);

          print("Masukkan Nama");
          String? nama = stdin.readLineSync();

          print("Masukkan Judul");
          String? judul = stdin.readLineSync();

          print("Masukkan Harga");
          String? harga2 = stdin.readLineSync();
          int harga = int.parse(harga2!);

          print("Masukkan ISBN");
          String? isbn = stdin.readLineSync();

          print("Masukkan Penulis");
          String? penulis = stdin.readLineSync();

          print("Masukkan Negara");
          String? negara = stdin.readLineSync();

          item.add(TravelGuide(
              id, nama, judul, harga, isbn, lokasi, penulis, negara));
          counter++;
        }

        if (menubuku2 == 3) {
          print("Masukkan ID");
          String? id2 = stdin.readLineSync();
          int id = int.parse(id2!);

          print("Masukkan Nama");
          String? nama = stdin.readLineSync();

          print("Masukkan Judul");
          String? judul = stdin.readLineSync();

          print("Masukkan Harga");
          String? harga2 = stdin.readLineSync();
          int harga = int.parse(harga2!);

          print("Masukkan Artis");
          String? artis = stdin.readLineSync();

          item.add(CD(id, nama, judul, harga, lokasi, artis));
          counter++;
        }
      } while (menubuku2 != 4);
    }
    if (menu2 == 2) {
      print("Masukkan Indexnya : ");
      String? angka = stdin.readLineSync();
      int angka2 = int.parse(angka!);
      item[angka2].Display;
    }
    if (menu2 == 3) {
      print("Masukkan Indexnya : ");
      String? angka = stdin.readLineSync();
      int angka2 = int.parse(angka!);

      print("Masukkan di Lokasi ke Berapa : ");
      String? lokasi = stdin.readLineSync();
      int lokasi2 = int.parse(lokasi!);

      for (int i = 0; i < counter; i++) {
        if (i == angka2) {
          item[i].lokasi = lokasi2;
        }
      }
    }
    if (menu2 == 4) {
      print("Masukkan Inputan lokasi output : ");
      String? lokasi = stdin.readLineSync();
      int lokasi2 = int.parse(lokasi!);

      for (int i = 0; i < counter; i++) {
        if (item[i].lokasi == lokasi2) {
          item[i].Display;
        }
      }
    }
    if (menu2 == 5) {
      print("Masukkan Inputan lokasi output : ");
      String? title = stdin.readLineSync();

      for (int i = 0; i < counter; i++) {
        if (item[i].judul == title) {
          item[i].Display;
        }
      }
    }
    if (menu2 == 6) {
      print("Masukkan n- barang pertama : ");
      String? n = stdin.readLineSync();
      int n2 = int.parse(n!);

      print("Masukkan Harga Bawah : ");
      String? bawah = stdin.readLineSync();
      int b2 = int.parse(bawah!);

      print("Masukkan Harga Atas : ");
      String? atas = stdin.readLineSync();
      int a2 = int.parse(atas!);

      for (int i = 0; i < n2; i++) {
        if (item[i].harga <= a2 && item[i].harga >= b2) {
          item[i].Display;
        }
      }
    }
  } while (menu2 != 7);
}
