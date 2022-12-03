import 'dart:io';

import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/pages/first_splash.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';
import 'package:perpustakaan_itk/pages/home.dart';
import 'package:perpustakaan_itk/pages/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String tempUser = prefs.getString('user');
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: FirstSplash(),
    ),
  );
}
