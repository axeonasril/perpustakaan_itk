// To parse this JSON data, do
//
//     final notifikasi = notifikasiFromJson(jsonString);

import 'dart:convert';

Notifikasi notifikasiFromJson(String str) =>
    Notifikasi.fromJson(json.decode(str));

String notifikasiToJson(Notifikasi data) => json.encode(data.toJson());

class Notifikasi {
  Notifikasi({
    this.id,
    this.judul,
    this.pesan,
    this.readAt,
    this.createdAt,
  });

  final String id;
  final dynamic judul;
  final Pesan pesan;
  final dynamic readAt;
  final String createdAt;

  factory Notifikasi.fromJson(Map<String, dynamic> json) => Notifikasi(
        id: json["id"] == null ? null : json["id"],
        judul: json["judul"],
        pesan: json["pesan"] == null ? null : Pesan.fromJson(json["pesan"]),
        readAt: json["read_at"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "judul": judul,
        "pesan": pesan == null ? null : pesan.toJson(),
        "read_at": readAt,
        "created_at": createdAt == null ? null : createdAt,
      };
}

class Pesan {
  Pesan({
    this.judul,
    this.pesan,
  });

  final String judul;
  final String pesan;

  factory Pesan.fromJson(Map<String, dynamic> json) => Pesan(
        judul: json["judul"] == null ? null : json["judul"],
        pesan: json["pesan"] == null ? null : json["pesan"],
      );

  Map<String, dynamic> toJson() => {
        "judul": judul == null ? null : judul,
        "pesan": pesan == null ? null : pesan,
      };
}
