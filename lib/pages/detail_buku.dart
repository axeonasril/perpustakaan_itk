import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailBuku extends StatefulWidget {
  const DetailBuku({Key key}) : super(key: key);

  @override
  State<DetailBuku> createState() => _DetailBukuState();
}

class _DetailBukuState extends State<DetailBuku> {
  @override
  Widget build(BuildContext context) {
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          leading: BackButton(),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.more_horiz,
                  )),
            ),
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xff6759FF),
          title: Text(
            'DETAIL BUKU',
            style: GoogleFonts.openSans(
              color: Color(0xffFFFFFF),
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      );
    }
  }
}
