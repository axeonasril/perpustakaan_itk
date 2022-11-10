import 'dart:convert';

BookmarkModels bookmarkModelsFromJson(String str) => BookmarkModels.fromJson(json.decode(str));

String bookmarkModelsToJson(BookmarkModels data) => json.encode(data.toJson());

class BookmarkModels {
    BookmarkModels({
        this.id,
        this.userId,
        this.dokumen,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    UserId userId;
    Dokumen dokumen;
    DateTime createdAt;
    DateTime updatedAt;

    factory BookmarkModels.fromJson(Map<String, dynamic> json) => BookmarkModels(
        id: json["id"],
        userId: UserId.fromJson(json["user_id"]),
        dokumen: Dokumen.fromJson(json["dokumen"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId.toJson(),
        "dokumen": dokumen.toJson(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class Dokumen {
    Dokumen({
        this.id,
        this.judul,
        this.tahunTerbit,
        this.namaPengarang,
        this.kategoriId,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String judul;
    String tahunTerbit;
    String namaPengarang;
    int kategoriId;
    DateTime createdAt;
    DateTime updatedAt;

    factory Dokumen.fromJson(Map<String, dynamic> json) => Dokumen(
        id: json["id"],
        judul: json["judul"],
        tahunTerbit: json["tahun_terbit"],
        namaPengarang: json["nama_pengarang"],
        kategoriId: json["kategori_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "judul": judul,
        "tahun_terbit": tahunTerbit,
        "nama_pengarang": namaPengarang,
        "kategori_id": kategoriId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
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

    String name;
    String email;
    String nim;
    String jurusan;
    String prodi;
    String angkatan;
    String role;

    factory UserId.fromJson(Map<String, dynamic> json) => UserId(
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
