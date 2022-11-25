import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/pages/login.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({Key key}) : super(key: key);

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  void doSplash() async {
    await Future.delayed(Duration(seconds: 3));

    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('token') != null) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => TabDecider()));
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => Login()));
    }
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Loading...',
                    style: GoogleFonts.openSans(
                        color: Color(0xff939393),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
