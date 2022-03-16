import 'dart:io';
import 'Cbuku.dart';
import 'DC.dart';

void main() {
  String? menu;
  int menu2;
  List item = [];
  print(" ");
  do {
    print("1. Menambah Data Buku");
    print("2. Menampilkan Sebuah Barang");
    print("3. Meletakkan barang pada Lokasi Tertentu");
    print("4. Menampilkan Seluruh Barang");
    print("5. Exit");
    print("Input 1/2/3/4/5");

    menu = stdin.readLineSync();
    menu2 = int.parse(menu!);

    if (menu2 == 1) {
      item.add(BukuBiasa(1, "udin", "aaa", 10000, "bbb", "ccc"));
    }
    if (menu2 == 2) {}
    if (menu2 == 3) {}
    if (menu2 == 4) {}
  } while (menu2 != 5);
}
