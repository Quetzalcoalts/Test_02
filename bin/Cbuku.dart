import 'Cbuku.dart';
import 'Buku.dart';

class BukuBiasa extends Buku {
  BukuBiasa(int? id, String? nama, String? judul, int? harga, String? isbn,
      String? penulis)
      : super(id, nama, judul, harga, isbn, penulis);
}

class TravelGuide extends Buku {
  String? negara;

  TravelGuide(int? id, String? nama, String? judul, int? harga, String? isbn,
      int? lokasi, String? penulis, String? negara2)
      : super(id, nama, judul, harga, isbn, penulis) {
    this.negara = negara2;
  }
}
