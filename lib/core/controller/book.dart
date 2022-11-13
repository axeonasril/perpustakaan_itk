import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/book.dart';
import 'package:perpustakaan_itk/core/models/bookmark_models.dart';
import 'package:perpustakaan_itk/core/models/kategori.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Book>> getBook(BuildContext context) async {
  List<Book> book = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.get(url_api + '/dokumen',
        queryParameters: {'kategori_id': 1},
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
  } catch (e) {
    print(e);
  }
  return book;
}
