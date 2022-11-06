class User {
  int id;
  String name;
  String email;
  String nim;
  String jurusan;
  String prodi;
  String angkatan;
  String emailVerifiedAt;
  String password;
  String role;
  String rememberToken;
  String createdAt;
  String updatedAt;

  User(
      {this.id,
      this.name,
      this.email,
      this.nim,
      this.jurusan,
      this.prodi,
      this.angkatan,
      this.emailVerifiedAt,
      this.password,
      this.role,
      this.rememberToken,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    nim = json['nim'];
    jurusan = json['jurusan'];
    prodi = json['prodi'];
    angkatan = json['angkatan'];
    emailVerifiedAt = json['email_verified_at'];
    password = json['password'];
    role = json['role'];
    rememberToken = json['remember_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['nim'] = this.nim;
    data['jurusan'] = this.jurusan;
    data['prodi'] = this.prodi;
    data['angkatan'] = this.angkatan;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['password'] = this.password;
    data['role'] = this.role;
    data['remember_token'] = this.rememberToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
