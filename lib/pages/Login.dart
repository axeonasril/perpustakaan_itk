import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6759FF),
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/book_login.png',
              width: 100,
            ),
            SizedBox(
              height: 15,
              width: 500,
            ),
            Text(
              'Selamat Datang!',
              style: GoogleFonts.openSans(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Silahkan masuk untuk melanjutkan',
              style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 14),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  hintText: 'Username/Email',
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  hintStyle: GoogleFonts.openSans(color: Color(0xff939393))),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                hintText: 'Password',
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                hintStyle: GoogleFonts.openSans(
                  color: Color(0xff939393),
                ),
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xff939393),
                ),
              ),
            ),
            SizedBox(height: 10.75),
            Container(
              alignment: Alignment(1, 0.5),
              child: Text(
                'Lupa Password?',
                style: GoogleFonts.openSans(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 11),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffFFFFFF),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 220,
                height: 42,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff013880),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.openSans(
                      color: Color(0xffFFFFFF),
                      fontSize: 12.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}