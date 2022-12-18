import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/book.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<BookCover>> getBook(BuildContext context) async {
  List<BookCover> book = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Dio dio = Dio();

    Response response = await dio.get(urlApi + '/data-dokumen',
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
      response.data['data'].forEach((e) => book.add(BookCover.fromJson(e)));
    }
    print(response.data);
  } catch (e) {
    print(e);
  }
  return book;
}

Future<Book> showBook(BuildContext context, id) async {
  Book book;
  SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Dio dio = Dio();
    print(id);
    Response response = await dio.get(
      urlApi + '/dokumen/' + id.toString(),
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
      book = Book.fromJson(response.data['data']);
    }
  } catch (e) {
    print(e);
  }
  return book;
}

Future<List<BookCover>> getBookByKategori(
    BuildContext context, String id) async {
  List<BookCover> book = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Dio dio = Dio();

    Response response = await dio.get(
        urlApi + '/data-dokumen?kategori=' + id.toString(),
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
      response.data['data'].forEach((e) => book.add(BookCover.fromJson(e)));
    }
    print(response.data);
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
      urlApi + '/peminjaman-dokumen',
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
              title: Text('Berhasil!'),
              content: Text('Buku Berhasil Dipinjam'),
            );
          });
    }
  } catch (e) {
    print(e);
  }
}
