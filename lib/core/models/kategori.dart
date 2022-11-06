class Kategori {
  int id;
  String namaKategori;
  String detail;
  String berkas;
  String isPembimbing;
  String createdAt;
  String updatedAt;

  Kategori(
      {this.id,
      this.namaKategori,
      this.detail,
      this.berkas,
      this.isPembimbing,
      this.createdAt,
      this.updatedAt});

  Kategori.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaKategori = json['nama_kategori'];
    detail = json['detail'];
    berkas = json['berkas'];
    isPembimbing = json['isPembimbing'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama_kategori'] = this.namaKategori;
    data['detail'] = this.detail;
    data['berkas'] = this.berkas;
    data['isPembimbing'] = this.isPembimbing;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
