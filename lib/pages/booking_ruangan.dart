import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingRuangan extends StatefulWidget {
  const BookingRuangan({Key key}) : super(key: key);

  @override
  State<BookingRuangan> createState() => _BookingRuanganState();
}

class _BookingRuanganState extends State<BookingRuangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.more_horiz,
                  color: Color(0xffFFFFFF),
                )),
          ),
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6759FF),
        title: Text(
          'BOOKING RUANGAN',
          style: GoogleFonts.openSans(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),);
  }
}