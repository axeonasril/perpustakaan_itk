import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sweetalertv2/sweetalertv2.dart';

void checkin(context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.post(
      urlApi + '/checkin-pengunjung',
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
    if (response.data['status'] == 'error') {
      SweetAlertV2.show(context,
          title: 'Gagal',
          subtitle: 'Anda sudah melakukan checkin',
          style: SweetAlertV2Style.error, onPress: (bool isConfirm) {
        Navigator.pop(context);
        Navigator.pop(context);
        return false;
      });
    } else {
      SweetAlertV2.show(context,
          title: 'Berhasil',
          subtitle: 'Anda berhasil melakukan checkin',
          style: SweetAlertV2Style.success, onPress: (bool isConfirm) {
        Navigator.pop(context);
        Navigator.pop(context);
        return false;
      });
    }
  } catch (e) {
    print(e);
  }
}
