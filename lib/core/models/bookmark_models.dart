import 'dart:convert';

BookmarkModels bookmarkModelsFromJson(String str) => BookmarkModels.fromJson(json.decode(str));

String bookmarkModelsToJson(BookmarkModels data) => json.encode(data.toJson());

class BookmarkModels {
    BookmarkModels({
        this.id,
        this.userId,
        this.dokumen,
        this.gambarDokumen,
        this.createdAt,
        this.updatedAt,
    });

    final int id;
    final UserId userId;
    final Dokumen dokumen;
    final String gambarDokumen;
    final DateTime createdAt;
    final DateTime updatedAt;

    factory BookmarkModels.fromJson(Map<String, dynamic> json) => BookmarkModels(
        id: json["id"] == null ? null : json["id"],
        userId: json["user_id"] == null ? null : UserId.fromJson(json["user_id"]),
        dokumen: json["dokumen"] == null ? null : Dokumen.fromJson(json["dokumen"]),
        gambarDokumen: json["gambar_dokumen"] == null ? null : json["gambar_dokumen"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user_id": userId == null ? null : userId.toJson(),
        "dokumen": dokumen == null ? null : dokumen.toJson(),
        "gambar_dokumen": gambarDokumen == null ? null : gambarDokumen,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    };
}

class Dokumen {
    Dokumen({
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

    factory Dokumen.fromJson(Map<String, dynamic> json) => Dokumen(
        id: json["id"] == null ? null : json["id"],
        judul: json["judul"] == null ? null : json["judul"],
        gambarDokumen: json["gambar_dokumen"] == null ? null : json["gambar_dokumen"],
        namaPengarang: json["nama_pengarang"] == null ? null : json["nama_pengarang"],
        kategori: json["kategori"] == null ? null : json["kategori"],
        penerbit: json["penerbit"] == null ? null : json["penerbit"],
        tahunTerbit: json["tahun_terbit"] == null ? null : json["tahun_terbit"],
        tanggalDibuat: json["tanggal_dibuat"] == null ? null : json["tanggal_dibuat"],
        isBookmark: json["isBookmark"] == null ? null : json["isBookmark"],
        jumlahKunjungan: json["jumlah_kunjungan"] == null ? null : json["jumlah_kunjungan"],
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

class UserId {
    UserId({
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

    factory UserId.fromJson(Map<String, dynamic> json) => UserId(
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
