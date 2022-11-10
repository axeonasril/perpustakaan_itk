import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:javascript/javascript.dart';
import 'package:perpustakaan_itk/core/models/kategori.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Kategori>> getKategori(context) async {
  List<Kategori> kategori = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.get(url_api + '/kategori',queryParameters: {
      'nama_kategori': 'Nama Kategori', 
    },
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
      response.data['data'].forEach((e) => kategori.add(Kategori.fromJson(e)));
    }
  } catch (e) {
    print(e);
  }
  return kategori;
}
