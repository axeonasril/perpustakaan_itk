import 'dart:convert';

BookCover bookCoverFromJson(String str) => BookCover.fromJson(json.decode(str));

String bookCoverToJson(BookCover data) => json.encode(data.toJson());

class BookCover {
  BookCover({
    this.id,
    this.judul,
    this.gambarDokumen,
    this.namaPengarang,
    this.kategori,
    this.penerbit,
    this.tahunTerbit,
    this.tanggalDibuat,
    this.isBookmark,
    this.jumlahKunjungan,
    this.isPinjam,
  });

  final int id;
  final String judul;
  final String gambarDokumen;
  final String namaPengarang;
  final String kategori;
  final String penerbit;
  final String tahunTerbit;
  final String tanggalDibuat;
  final bool isBookmark;
  final int jumlahKunjungan;
  final bool isPinjam;

  factory BookCover.fromJson(Map<String, dynamic> json) => BookCover(
        id: json["id"] == null ? null : json["id"],
        judul: json["judul"] == null ? null : json["judul"],
        gambarDokumen:
            json["gambar_dokumen"] == null ? null : json["gambar_dokumen"],
        namaPengarang:
            json["nama_pengarang"] == null ? null : json["nama_pengarang"],
        kategori: json["kategori"] == null ? null : json["kategori"],
        penerbit: json["penerbit"] == null ? null : json["penerbit"],
        tahunTerbit: json["tahun_terbit"] == null ? null : json["tahun_terbit"],
        tanggalDibuat:
            json["tanggal_dibuat"] == null ? null : json["tanggal_dibuat"],
        isBookmark: json["isBookmark"] == null ? null : json["isBookmark"],
        jumlahKunjungan:
            json["jumlah_kunjungan"] == null ? null : json["jumlah_kunjungan"],
        isPinjam: json["isPinjam"] == null ? null : json["isPinjam"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "judul": judul == null ? null : judul,
        "gambar_dokumen": gambarDokumen == null ? null : gambarDokumen,
        "nama_pengarang": namaPengarang == null ? null : namaPengarang,
        "kategori": kategori == null ? null : kategori,
        "penerbit": penerbit == null ? null : penerbit,
        "tahun_terbit": tahunTerbit == null ? null : tahunTerbit,
        "tanggal_dibuat": tanggalDibuat == null ? null : tanggalDibuat,
        "isBookmark": isBookmark == null ? null : isBookmark,
        "jumlah_kunjungan": jumlahKunjungan == null ? null : jumlahKunjungan,
        "isPinjam": isPinjam == null ? null : isPinjam,
      };
}
