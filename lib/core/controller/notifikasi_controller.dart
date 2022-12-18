import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/kategori.dart';
import 'package:perpustakaan_itk/core/models/notifikasi.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Notifikasi>> getNotifikasi(context) async {
  List<Notifikasi> notifikasi = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.get(urlApi + '/notifikasi',
        options: Options(
            headers: {'Authorization': 'Bearer ' + prefs.getString('token')}));
    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal load'),
              content: Text('Notifikasi kosong'),
            );
          });
    } else {
      response.data['data']['data']
          .forEach((e) => notifikasi.add(Notifikasi.fromJson(e)));
    }
  } catch (e) {
    print(e);
  }
  return notifikasi;
}

Future<bool> cekNotifikasi(context) async {
  bool adaNotif = false;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.get(urlApi + '/notifikasi',
        options: Options(
            headers: {'Authorization': 'Bearer ' + prefs.getString('token')}));
    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal load'),
              content: Text('Notifikasi kosong'),
            );
          });
    } else {
      adaNotif = response.data['data']['notifikasi_unread'] != 0;
    }
  } catch (e) {
    print(e);
  }
  return adaNotif;
}

void bacaNotifikasi() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    await dio.get(urlApi + '/baca-notifikasi',
        options: Options(
            headers: {'Authorization': 'Bearer ' + prefs.getString('token')}));
  } catch (e) {
    print(e);
  }
}
