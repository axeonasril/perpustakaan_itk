import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:perpustakaan_itk/core/controller/auth.dart';
import 'package:perpustakaan_itk/core/models/user.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('Login Test', () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Dio dio = Dio();
    Response response = await dio.post(
      url_api + '/login',
      data: {'email': 'admin@gmail.com', 'password': '123123123'},
    );
    if (response.data['data'] == null) {
      print('error');
    } else {
      prefs.setString('token', response.data['data']['token'].toString());
      prefs.setString(
          'user', json.encode(response.data['data']['user']).toString());
    }

    expect(prefs.containsKey('token'), true);
  });
}
