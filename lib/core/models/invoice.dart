import 'dart:convert';

Invoice invoiceFromJson(String str) => Invoice.fromJson(json.decode(str));

String invoiceToJson(Invoice data) => json.encode(data.toJson());

class Invoice {
  Invoice({
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

  final int id;
  final User user;
  final String kode;
  final Ruangan ruangan;
  final DateTime tanggal;
  final String waktuAwal;
  final String waktuAkhir;
  final String keperluan;
  final String status;
  final String catatan;
  final String createdAt;
  final String updatedAt;

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
        id: json["id"] == null ? null : json["id"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        kode: json["kode"] == null ? null : json["kode"],
        ruangan:
            json["ruangan"] == null ? null : Ruangan.fromJson(json["ruangan"]),
        tanggal:
            json["tanggal"] == null ? null : DateTime.parse(json["tanggal"]),
        waktuAwal: json["waktu_awal"] == null ? null : json["waktu_awal"],
        waktuAkhir: json["waktu_akhir"] == null ? null : json["waktu_akhir"],
        keperluan: json["keperluan"],
        status: json["status"] == null ? null : json["status"],
        catatan: json["catatan"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user": user == null ? null : user.toJson(),
        "kode": kode == null ? null : kode,
        "ruangan": ruangan == null ? null : ruangan.toJson(),
        "tanggal": tanggal == null
            ? null
            : "${tanggal.year.toString().padLeft(4, '0')}-${tanggal.month.toString().padLeft(2, '0')}-${tanggal.day.toString().padLeft(2, '0')}",
        "waktu_awal": waktuAwal == null ? null : waktuAwal,
        "waktu_akhir": waktuAkhir == null ? null : waktuAkhir,
        "keperluan": keperluan,
        "status": status == null ? null : status,
        "catatan": catatan,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
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

  final int id;
  final String namaRuangan;
  final String deskripsi;
  final String jumlahOrang;
  final String lokasi;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Ruangan.fromJson(Map<String, dynamic> json) => Ruangan(
        id: json["id"] == null ? null : json["id"],
        namaRuangan: json["nama_ruangan"] == null ? null : json["nama_ruangan"],
        deskripsi: json["deskripsi"] == null ? null : json["deskripsi"],
        jumlahOrang: json["jumlah_orang"] == null ? null : json["jumlah_orang"],
        lokasi: json["lokasi"] == null ? null : json["lokasi"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "nama_ruangan": namaRuangan == null ? null : namaRuangan,
        "deskripsi": deskripsi == null ? null : deskripsi,
        "jumlah_orang": jumlahOrang == null ? null : jumlahOrang,
        "lokasi": lokasi == null ? null : lokasi,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
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

  final String name;
  final String email;
  final dynamic nim;
  final dynamic jurusan;
  final dynamic prodi;
  final dynamic angkatan;
  final String role;

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        nim: json["nim"],
        jurusan: json["jurusan"],
        prodi: json["prodi"],
        angkatan: json["angkatan"],
        role: json["role"] == null ? null : json["role"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "nim": nim,
        "jurusan": jurusan,
        "prodi": prodi,
        "angkatan": angkatan,
        "role": role == null ? null : role,
      };
}
