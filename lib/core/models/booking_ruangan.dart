import 'dart:convert';

BookingRuangan bookingRuanganFromJson(String str) =>
    BookingRuangan.fromJson(json.decode(str));

String bookingRuanganToJson(BookingRuangan data) => json.encode(data.toJson());

class BookingRuangan {
  BookingRuangan({
    this.id,
    this.user,
    this.kode,
    this.ruangan,
    this.tanggal,
    this.waktuAwal,
    this.waktuAkhir,
    this.keperluan,
    this.status,
    this.catatan,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  User user;
  String kode;
  Ruangan ruangan;
  DateTime tanggal;
  String waktuAwal;
  String waktuAkhir;
  String keperluan;
  String status;
  String catatan;
  String createdAt;
  String updatedAt;

  factory BookingRuangan.fromJson(Map<String, dynamic> json) => BookingRuangan(
        id: json["id"],
        user: User.fromJson(json["user"]),
        kode: json["kode"],
        ruangan: Ruangan.fromJson(json["ruangan"]),
        tanggal: DateTime.parse(json["tanggal"]),
        waktuAwal: json["waktu_awal"],
        waktuAkhir: json["waktu_akhir"],
        keperluan: json["keperluan"],
        status: json["status"],
        catatan: json["catatan"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user.toJson(),
        "kode": kode,
        "ruangan": ruangan.toJson(),
        "tanggal":
            "${tanggal.year.toString().padLeft(4, '0')}-${tanggal.month.toString().padLeft(2, '0')}-${tanggal.day.toString().padLeft(2, '0')}",
        "waktu_awal": waktuAwal,
        "waktu_akhir": waktuAkhir,
        "keperluan": keperluan,
        "status": status,
        "catatan": catatan,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class Ruangan {
  Ruangan({
    this.id,
    this.namaRuangan,
    this.deskripsi,
    this.jumlahOrang,
    this.lokasi,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String namaRuangan;
  String deskripsi;
  String jumlahOrang;
  String lokasi;
  DateTime createdAt;
  DateTime updatedAt;

  factory Ruangan.fromJson(Map<String, dynamic> json) => Ruangan(
        id: json["id"],
        namaRuangan: json["nama_ruangan"],
        deskripsi: json["deskripsi"],
        jumlahOrang: json["jumlah_orang"],
        lokasi: json["lokasi"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_ruangan": namaRuangan,
        "deskripsi": deskripsi,
        "jumlah_orang": jumlahOrang,
        "lokasi": lokasi,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class User {
  User({
    this.name,
    this.email,
    this.nim,
    this.jurusan,
    this.prodi,
    this.angkatan,
    this.role,
  });

  String name;
  String email;
  dynamic nim;
  dynamic jurusan;
  dynamic prodi;
  dynamic angkatan;
  String role;

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        nim: json["nim"],
        jurusan: json["jurusan"],
        prodi: json["prodi"],
        angkatan: json["angkatan"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "nim": nim,
        "jurusan": jurusan,
        "prodi": prodi,
        "angkatan": angkatan,
        "role": role,
      };
}
