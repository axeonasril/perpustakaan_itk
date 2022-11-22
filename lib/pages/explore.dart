import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/widgets/eksplor_ebook.dart';
import 'package:perpustakaan_itk/widgets/eksplor_kategori.dart';
import 'package:perpustakaan_itk/widgets/eksplor_ruangan.dart';

class Explore extends StatefulWidget {
  const Explore({Key key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        title: Text(
          'EKSPLOR PERPUSTAKAAN ITK',
          style: GoogleFonts.openSans(
            color: Color(0xff001AFF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 45,
            padding: EdgeInsets.only(left: 0),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
                border: InputBorder.none,
                hintText: 'Cari',
              ),
            ),
          ),
          SizedBox(
            height: 31,
          ),
          EksplorKategori(),
          SizedBox(
            height: 30,
          ),
          EksplorEbook(),
          SizedBox(
            height: 30,
          ),
          EksplorRuangan(),
        ],
      ),
    );
  }
}
