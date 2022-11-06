import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/core/controller/auth.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loading = false;

  bool obsecure = true;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6759FF),
      body: Padding(
        padding: const EdgeInsets.only(top: 170, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/book_login.png',
              width: 100,
            ),
            SizedBox(
              height: 25,
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
            SizedBox(height: 25),
            TextFormField(
              controller: email,
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
              controller: password,
              obscureText: obsecure,
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
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obsecure = !obsecure;
                      });
                    },
                    icon: Icon(
                      obsecure == false
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Color(0xff939393),
                    ),
                  )),
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
            SizedBox(height: 35),
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
                  onPressed: () async {
                    setState(() {
                      loading = true;
                    });
                    await login(email.text, password.text, context);
                    setState(() {
                      loading = false;
                    });
                  },
                  child: Text(
                    loading == true ? 'Menunggu' : 'Masuk',
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
