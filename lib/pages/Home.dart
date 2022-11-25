import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:perpustakaan_itk/pages/bookmark.dart';
import 'package:perpustakaan_itk/widgets/bottom_navbar.dart';
import 'package:perpustakaan_itk/widgets/buku_terbaru.dart';
import 'package:perpustakaan_itk/widgets/carousel.dart';
import 'package:perpustakaan_itk/widgets/rekomendasi.dart';
import 'package:perpustakaan_itk/widgets/terakhir_dibaca.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Bookmark()));
              },
              child: Icon(
                Icons.bookmark_outline,
                color: Colors.white,
              )),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          )
        ],
        elevation: 0,
        backgroundColor: Color(0xff6759ff),
        title: Text(
          'PERPUS ITK',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xff6759ff),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Carousel(),
                SizedBox(
                  height: 25,
                ),
                Rekomendasi(),
                SizedBox(
                  height: 5,
                ),
                TerakhirDibaca(),
                SizedBox(
                  height: 25,
                ),
                BukuTerbaru(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
