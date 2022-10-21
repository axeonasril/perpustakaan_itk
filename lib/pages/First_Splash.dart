import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/pages/Login.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({Key key}) : super(key: key);

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  void doSplash() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => Login()));
  }

  @override
  void initState() {
    super.initState();
    doSplash();
  }

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
