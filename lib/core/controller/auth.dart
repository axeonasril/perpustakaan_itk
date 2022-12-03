import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/user.dart';
import 'package:perpustakaan_itk/pages/login.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

void login(email, password, context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    
    Dio dio = Dio();
    print('asmzxcnzmxncmxznc');

    Response response = await dio.post(
      url_api + '/login',
      data: {'email': email, 'password': password},
    );

    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal Login'),
              content: Text('User tidak ditemukan'),
            );
          });
    } else {
      prefs.setString('token', response.data['data']['token'].toString());
      prefs.setString(
          'user', json.encode(response.data['data']['user']).toString());
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => TabDecider()),
          (Route<dynamic> route) => false);
    }
  } catch (e) {
    print(e);
  }
}

void logout(context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove('token');
  prefs.remove('user');
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (BuildContext context) => Login()),
      (Route<dynamic> route) => false);
}
