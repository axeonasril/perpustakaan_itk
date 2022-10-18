import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.only(top: 210, left: 72, right: 72),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/book.png',
                width: 140,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: SizedBox(height: 200),
            ),
            Text(
              'Loading...',
              style: GoogleFonts.openSans(
                  color: Color(0xff939393),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
