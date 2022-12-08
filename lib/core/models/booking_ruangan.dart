import 'dart:convert';

BookingRuangan bookingRuanganFromJson(String str) =>
    BookingRuangan.fromJson(json.decode(str));

String bookingRuanganToJson(BookingRuangan data) => json.encode(data.toJson());

class BookingRuangan {
  BookingRuangan({
    this.id,
    this.namaRuangan,
    this.deskripsi,
    this.jumlahOrang,
    this.lokasi,
    this.statusKursi,
  });

  final int id;
  final String namaRuangan;
  final String deskripsi;
  final String jumlahOrang;
  final String lokasi;
  final bool statusKursi;

  factory BookingRuangan.fromJson(Map<String, dynamic> json) => BookingRuangan(
        id: json["id"] == null ? null : json["id"],
        namaRuangan: json["nama_ruangan"] == null ? null : json["nama_ruangan"],
        deskripsi: json["deskripsi"] == null ? null : json["deskripsi"],
        jumlahOrang: json["jumlah_orang"] == null ? null : json["jumlah_orang"],
        lokasi: json["lokasi"] == null ? null : json["lokasi"],
        statusKursi: json["status_kursi"] == null ? null : json["status_kursi"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "nama_ruangan": namaRuangan == null ? null : namaRuangan,
        "deskripsi": deskripsi == null ? null : deskripsi,
        "jumlah_orang": jumlahOrang == null ? null : jumlahOrang,
        "lokasi": lokasi == null ? null : lokasi,
        "status_kursi": statusKursi == null ? null : statusKursi,
      };
}
