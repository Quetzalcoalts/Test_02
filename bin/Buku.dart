class Buku {
  int? _id;
  String? _nama;
  String? _judul;
  int? _harga;
  String? _isbn;
  String? _penulis;

  Buku(this._id, this._nama, this._judul, this._harga, this._isbn,
      this._penulis);

  set id(int dtId) {
    _id = dtId;
  }

  int get id => this._id!;

  set nama(String dtNama) {
    _nama = dtNama;
  }

  String get nama => this._nama!;

  set judul(String dtJudul) {
    _judul = dtJudul;
  }

  String get judul => this._judul!;

  set harga(int dtHarga) {
    _harga = dtHarga;
  }

  int get harga => this._harga!;

  set isbn(String dtIsbn) {
    _isbn = dtIsbn;
  }

  String get isbn => this._isbn!;

  set penulis(String dtPenulis) {
    _penulis = dtPenulis;
  }
}
