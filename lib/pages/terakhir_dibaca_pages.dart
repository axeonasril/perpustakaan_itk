import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';

class TerakhirDibacaPages extends StatefulWidget {
  const TerakhirDibacaPages({Key key}) : super(key: key);

  @override
  State<TerakhirDibacaPages> createState() => _TerakhirDibacaPagesState();
}

class _TerakhirDibacaPagesState extends State<TerakhirDibacaPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xffFFFFFF),
          onPressed: () {
            CurrentPage.goHome();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => TabDecider(),
              ),
            );
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6759ff),
        title: Text(
          'TERAKHIR DIBACA',
          style: GoogleFonts.openSans(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/buku4.png',
                      height: 43,
                      width: 42,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MENGENAL RASUL',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 12),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Oleh Imam At-Tirmidzi',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Hari Ini',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Color(0xff696969)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
