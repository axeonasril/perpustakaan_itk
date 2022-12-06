import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/booking_ruangan.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Ruangan>> getRuangan(BuildContext context) async {
  List<Ruangan> ruangan = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Dio dio = Dio();
    Response response = await dio.get(url_api + '/ruangan',
        options: Options(
            headers: {'Authorization': 'Bearer ' + prefs.getString('token')}));
    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal load'),
              content: Text('Ruangan kosong'),
            );
          });
    } else {
      response.data['data'].forEach((e) => ruangan.add(Ruangan.fromJson(e)));
    }
  } catch (e) {
    print(e);
  }
  return ruangan;
}

Future<BookingRuangan> bookingRuangan(BuildContext context, id) async {
  BookingRuangan ruangan;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    print(id);
    Response response = await dio.get(
      url_api + '/dokumen/' + id.toString(),
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
      ruangan = BookingRuangan.fromJson(response.data['data']);
    }
  } catch (e) {
    print(e);
  }
  return ruangan;
}

void pinjamRuangan(context, id) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.post(
      url_api + '/ruangan',
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
