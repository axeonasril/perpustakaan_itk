import 'dart:convert';

import 'package:perpustakaan_itk/core/models/kategori.dart';

Book bookFromJson(String str) => Book.fromJson(json.decode(str));

String bookToJson(Book data) => json.encode(data.toJson());

class Book {
    Book({
        this.id,
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
        this.isPinjam,
    });

    int id;
    String judul;
    Kategori kategori;
    String tahunTerbit;
    String namaPengarang;
    String penerbit;
    dynamic deskripsi;
    String userId;
    dynamic cover;
    dynamic lembarPengesahan;
    dynamic kataPengantar;
    dynamic ringkasan;
    dynamic daftarIsi;
    dynamic daftarGambar;
    dynamic daftarTabel;
    dynamic daftarNotasi;
    dynamic abstractEn;
    dynamic abstractId;
    dynamic bab1;
    dynamic bab2;
    dynamic bab3;
    dynamic bab4;
    dynamic kesimpulan;
    dynamic daftarPustaka;
    dynamic lampiran;
    dynamic paper;
    dynamic lembarPersetujuan;
    dynamic fullDokumen;
    String status;
    dynamic dataTambahan;
    dynamic jurusan;
    String tanggalDibuat;
    bool isBookmark;
    int jumlahKunjungan;
    dynamic pembimbing;
    bool isPinjam;

    factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        judul: json["judul"],
        kategori: Kategori.fromJson(json["kategori"]),
        tahunTerbit: json["tahun_terbit"],
        namaPengarang: json["nama_pengarang"],
        penerbit: json["penerbit"],
        deskripsi: json["deskripsi"],
        userId: json["user_id"],
        cover: json["cover"],
        lembarPengesahan: json["lembar_pengesahan"],
        kataPengantar: json["kata_pengantar"],
        ringkasan: json["ringkasan"],
        daftarIsi: json["daftar_isi"],
        daftarGambar: json["daftar_gambar"],
        daftarTabel: json["daftar_tabel"],
        daftarNotasi: json["daftar_notasi"],
        abstractEn: json["abstract_en"],
        abstractId: json["abstract_id"],
        bab1: json["bab1"],
        bab2: json["bab2"],
        bab3: json["bab3"],
        bab4: json["bab4"],
        kesimpulan: json["kesimpulan"],
        daftarPustaka: json["daftar_pustaka"],
        lampiran: json["lampiran"],
        paper: json["paper"],
        lembarPersetujuan: json["lembar_persetujuan"],
        fullDokumen: json["full_dokumen"],
        status: json["status"],
        dataTambahan: json["data_tambahan"],
        jurusan: json["jurusan"],
        tanggalDibuat: json["tanggal_dibuat"],
        isBookmark: json["isBookmark"],
        jumlahKunjungan: json["jumlah_kunjungan"],
        pembimbing: json["pembimbing"],
        isPinjam: json["isPinjam"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "judul": judul,
        "kategori": kategori.toJson(),
        "tahun_terbit": tahunTerbit,
        "nama_pengarang": namaPengarang,
        "penerbit": penerbit,
        "deskripsi": deskripsi,
        "user_id": userId,
        "cover": cover,
        "lembar_pengesahan": lembarPengesahan,
        "kata_pengantar": kataPengantar,
        "ringkasan": ringkasan,
        "daftar_isi": daftarIsi,
        "daftar_gambar": daftarGambar,
        "daftar_tabel": daftarTabel,
        "daftar_notasi": daftarNotasi,
        "abstract_en": abstractEn,
        "abstract_id": abstractId,
        "bab1": bab1,
        "bab2": bab2,
        "bab3": bab3,
        "bab4": bab4,
        "kesimpulan": kesimpulan,
        "daftar_pustaka": daftarPustaka,
        "lampiran": lampiran,
        "paper": paper,
        "lembar_persetujuan": lembarPersetujuan,
        "full_dokumen": fullDokumen,
        "status": status,
        "data_tambahan": dataTambahan,
        "jurusan": jurusan,
        "tanggal_dibuat": tanggalDibuat,
        "isBookmark": isBookmark,
        "jumlah_kunjungan": jumlahKunjungan,
        "pembimbing": pembimbing,
        "isPinjam": isPinjam,
    };
}
