// To parse this JSON data, do
//
//     final bukuPinjamanModel = bukuPinjamanModelFromJson(jsonString);

import 'dart:convert';

import 'package:perpustakaan_itk/core/models/bookmark_models.dart';
import 'package:perpustakaan_itk/core/models/user.dart';

BukuPinjamanModel bukuPinjamanModelFromJson(String str) => BukuPinjamanModel.fromJson(json.decode(str));

String bukuPinjamanModelToJson(BukuPinjamanModel data) => json.encode(data.toJson());

class BukuPinjamanModel {
    BukuPinjamanModel({
        this.id,
        this.user,
        this.gambarDokumen,
        this.tglPeminjaman,
        this.tglPengembalian,
        this.dokumen,
        this.durasiPeminjaman,
    });

    final int id;
    final User user;
    final String gambarDokumen;
    final String tglPeminjaman;
    final String tglPengembalian;
    final Dokumen dokumen;
    final String durasiPeminjaman;

    factory BukuPinjamanModel.fromJson(Map<String, dynamic> json) => BukuPinjamanModel(
        id: json["id"] == null ? null : json["id"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        gambarDokumen: json["gambar_dokumen"] == null ? null : json["gambar_dokumen"],
        tglPeminjaman: json["tgl_peminjaman"] == null ? null : json["tgl_peminjaman"],
        tglPengembalian: json["tgl_pengembalian"] == null ? null : json["tgl_pengembalian"],
        dokumen: json["dokumen"] == null ? null : Dokumen.fromJson(json["dokumen"]),
        durasiPeminjaman: json["durasi_peminjaman"] == null ? null : json["durasi_peminjaman"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user": user == null ? null : user.toJson(),
        "gambar_dokumen": gambarDokumen == null ? null : gambarDokumen,
        "tgl_peminjaman": tglPeminjaman == null ? null : tglPeminjaman,
        "tgl_pengembalian": tglPengembalian == null ? null : tglPengembalian,
        "dokumen": dokumen == null ? null : dokumen.toJson(),
        "durasi_peminjaman": durasiPeminjaman == null ? null : durasiPeminjaman,
    };
}

