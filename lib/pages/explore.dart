import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            'EKSPLOR PERPUS',
            style: GoogleFonts.openSans(
              color: Color(0xff001AFF),
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          )),
    );
  }
}
