import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/book.dart';
import 'package:perpustakaan_itk/core/models/bookmark_models.dart';
import 'package:perpustakaan_itk/core/models/kategori.dart';
import 'package:perpustakaan_itk/core/models/show_buku.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Book>> getBook(BuildContext context) async {
  List<Book> book = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Dio dio = Dio();

    Response response = await dio.get(url_api + '/data-dokumen',
        options: Options(
            headers: {'Authorization': 'Bearer ' + prefs.getString('token')}));
    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal load'),
              content: Text('Kategori kosong'),
            );
          });
    } else {
      response.data['data'].forEach((e) => book.add(Book.fromJson(e)));
    }
    print(response.data);
  } catch (e) {
    print(e);
  }
  return book;
}

Future<ShowBuku> showBook(BuildContext context, id) async {
  ShowBuku book;
  SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Dio dio = Dio();
    print(id);
    Response response = await dio.get(
      url_api + '/data-dokumen' + id.toString(),
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
    print(response.data);
    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal load'),
              content: Text('Kategori kosong'),
            );
          });
    } else {
      book = ShowBuku.fromJson(response.data['data']);
    }
  } catch (e) {
    print(e);
  }
  return book;
}

void pinjamBuku(context, id) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.post(
      url_api + '/peminjaman-dokumen',
      data: {
        'dokumen_id': id.toString(),
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
    print(response.data['data']);
    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal load'),
              content: Text('Kategori kosong'),
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Berhasil Dipinjam'),
              content: Text('Buku Telah Dipinjam'),
            );
          });
    }
  } catch (e) {
    print(e);
  }
}
