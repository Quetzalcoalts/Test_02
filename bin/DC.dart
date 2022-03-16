class CD {
  int? _id;
  String? _nama;
  String? _judul;
  int? _harga;
  String? _artis;
  int? _lokasi;

  CD(_id2, _nama2, _judul2, _harga2, _lokasi2, _artis2) {
    _id = _id2;
    _nama = _nama2;
    _judul = _judul2;
    _harga = _harga2;
    _lokasi = _lokasi2;
    _artis = _artis2;
  }

  int get id => this._id!;
  String get nama => this._nama!;
  String get judul => this._judul!;
  int get harga => this._harga!;
  int get lokasi => this._lokasi!;
  String get artis => this._artis!;

  set id(int dtID) {
    _id = dtID;
  }

  set nama(String dtNama) {
    _nama = dtNama;
  }

  set judul(String dtJudul) {
    _judul = dtJudul;
  }

  set harga(int dtHarga) {
    _harga = dtHarga;
  }

  set lokasi(int dtLokasi) {
    _lokasi = dtLokasi;
  }

  set artis(String dtArtis) {
    _artis = dtArtis;
  }

  @override
  String toString() {
    return " ${this._id}, ${this._nama}, ${this._judul}, ${this._harga}, ${this._lokasi}, ${this._artis}";
  }
}
