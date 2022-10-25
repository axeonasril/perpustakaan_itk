import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/pages/First_Splash.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';
import 'package:perpustakaan_itk/pages/home.dart';
import 'package:perpustakaan_itk/pages/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';

void main() => runApp(PerpustakaanItk());

class PerpustakaanItk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: TabDecider(),
    );
  }
}
