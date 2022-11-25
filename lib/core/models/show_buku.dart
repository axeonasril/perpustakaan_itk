class ShowBuku {
  int id;
  String judul;
  Kategori kategori;
  String tahunTerbit;
  String namaPengarang;
  String penerbit;
  String deskripsi;
  String userId;
  Cover cover;
  Null lembarPengesahan;
  Cover kataPengantar;
  Cover ringkasan;
  Cover daftarIsi;
  Cover daftarGambar;
  Cover daftarTabel;
  Null daftarNotasi;
  Null abstractEn;
  Null abstractId;
  Cover bab1;
  Cover bab2;
  Cover bab3;
  Cover bab4;
  Null kesimpulan;
  Null daftarPustaka;
  Null lampiran;
  Null paper;
  Null lembarPersetujuan;
  Cover fullDokumen;
  String status;
  Null dataTambahan;
  Null jurusan;
  String tanggalDibuat;
  bool isBookmark;
  int jumlahKunjungan;
  Null pembimbing;
  bool isPinjam;

  ShowBuku(
      {this.id,
      this.judul,
      this.kategori,
      this.tahunTerbit,
      this.namaPengarang,
      this.penerbit,
      this.deskripsi,
      this.userId,
      this.cover,
      this.lembarPengesahan,
      this.kataPengantar,
      this.ringkasan,
      this.daftarIsi,
      this.daftarGambar,
      this.daftarTabel,
      this.daftarNotasi,
      this.abstractEn,
      this.abstractId,
      this.bab1,
      this.bab2,
      this.bab3,
      this.bab4,
      this.kesimpulan,
      this.daftarPustaka,
      this.lampiran,
      this.paper,
      this.lembarPersetujuan,
      this.fullDokumen,
      this.status,
      this.dataTambahan,
      this.jurusan,
      this.tanggalDibuat,
      this.isBookmark,
      this.jumlahKunjungan,
      this.pembimbing,
      this.isPinjam});

  ShowBuku.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    judul = json['judul'];
    kategori = json['kategori'] != null
        ? new Kategori.fromJson(json['kategori'])
        : null;
    tahunTerbit = json['tahun_terbit'];
    namaPengarang = json['nama_pengarang'];
    penerbit = json['penerbit'];
    deskripsi = json['deskripsi'];
    userId = json['user_id'];
    cover = json['cover'] != null ? new Cover.fromJson(json['cover']) : null;
    lembarPengesahan = json['lembar_pengesahan'];
    kataPengantar = json['kata_pengantar'] != null
        ? new Cover.fromJson(json['kata_pengantar'])
        : null;
    ringkasan = json['ringkasan'] != null
        ? new Cover.fromJson(json['ringkasan'])
        : null;
    daftarIsi = json['daftar_isi'] != null
        ? new Cover.fromJson(json['daftar_isi'])
        : null;
    daftarGambar = json['daftar_gambar'] != null
        ? new Cover.fromJson(json['daftar_gambar'])
        : null;
    daftarTabel = json['daftar_tabel'] != null
        ? new Cover.fromJson(json['daftar_tabel'])
        : null;
    daftarNotasi = json['daftar_notasi'];
    abstractEn = json['abstract_en'];
    abstractId = json['abstract_id'];
    bab1 = json['bab1'] != null ? new Cover.fromJson(json['bab1']) : null;
    bab2 = json['bab2'] != null ? new Cover.fromJson(json['bab2']) : null;
    bab3 = json['bab3'] != null ? new Cover.fromJson(json['bab3']) : null;
    bab4 = json['bab4'] != null ? new Cover.fromJson(json['bab4']) : null;
    kesimpulan = json['kesimpulan'];
    daftarPustaka = json['daftar_pustaka'];
    lampiran = json['lampiran'];
    paper = json['paper'];
    lembarPersetujuan = json['lembar_persetujuan'];
    fullDokumen = json['full_dokumen'] != null
        ? new Cover.fromJson(json['full_dokumen'])
        : null;
    status = json['status'];
    dataTambahan = json['data_tambahan'];
    jurusan = json['jurusan'];
    tanggalDibuat = json['tanggal_dibuat'];
    isBookmark = json['isBookmark'];
    jumlahKunjungan = json['jumlah_kunjungan'];
    pembimbing = json['pembimbing'];
    isPinjam = json['isPinjam'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['judul'] = this.judul;
    if (this.kategori != null) {
      data['kategori'] = this.kategori.toJson();
    }
    data['tahun_terbit'] = this.tahunTerbit;
    data['nama_pengarang'] = this.namaPengarang;
    data['penerbit'] = this.penerbit;
    data['deskripsi'] = this.deskripsi;
    data['user_id'] = this.userId;
    if (this.cover != null) {
      data['cover'] = this.cover.toJson();
    }
    data['lembar_pengesahan'] = this.lembarPengesahan;
    if (this.kataPengantar != null) {
      data['kata_pengantar'] = this.kataPengantar.toJson();
    }
    if (this.ringkasan != null) {
      data['ringkasan'] = this.ringkasan.toJson();
    }
    if (this.daftarIsi != null) {
      data['daftar_isi'] = this.daftarIsi.toJson();
    }
    if (this.daftarGambar != null) {
      data['daftar_gambar'] = this.daftarGambar.toJson();
    }
    if (this.daftarTabel != null) {
      data['daftar_tabel'] = this.daftarTabel.toJson();
    }
    data['daftar_notasi'] = this.daftarNotasi;
    data['abstract_en'] = this.abstractEn;
    data['abstract_id'] = this.abstractId;
    if (this.bab1 != null) {
      data['bab1'] = this.bab1.toJson();
    }
    if (this.bab2 != null) {
      data['bab2'] = this.bab2.toJson();
    }
    if (this.bab3 != null) {
      data['bab3'] = this.bab3.toJson();
    }
    if (this.bab4 != null) {
      data['bab4'] = this.bab4.toJson();
    }
    data['kesimpulan'] = this.kesimpulan;
    data['daftar_pustaka'] = this.daftarPustaka;
    data['lampiran'] = this.lampiran;
    data['paper'] = this.paper;
    data['lembar_persetujuan'] = this.lembarPersetujuan;
    if (this.fullDokumen != null) {
      data['full_dokumen'] = this.fullDokumen.toJson();
    }
    data['status'] = this.status;
    data['data_tambahan'] = this.dataTambahan;
    data['jurusan'] = this.jurusan;
    data['tanggal_dibuat'] = this.tanggalDibuat;
    data['isBookmark'] = this.isBookmark;
    data['jumlah_kunjungan'] = this.jumlahKunjungan;
    data['pembimbing'] = this.pembimbing;
    data['isPinjam'] = this.isPinjam;
    return data;
  }
}

class Kategori {
  int id;
  String namaKategori;

  Kategori({this.id, this.namaKategori});

  Kategori.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaKategori = json['nama_kategori'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama_kategori'] = this.namaKategori;
    return data;
  }
}

class Cover {
  String file;
  String size;

  Cover({this.file, this.size});

  Cover.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['file'] = this.file;
    data['size'] = this.size;
    return data;
  }
}
