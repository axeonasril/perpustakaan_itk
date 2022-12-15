import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                response.data['status'],
              ),
              content: Text(
                response.data['message'],
              ),
            );
          });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              response.data['status'],
            ),
            content: Text(
              response.data['data']['message'],
            ),
          );
        },
      );
    }
  } catch (e) {
    print(e);
  }
}
