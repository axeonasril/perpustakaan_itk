import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/core/controller/notifikasi_controller.dart';
import 'package:perpustakaan_itk/core/models/notifikasi.dart';
import 'package:perpustakaan_itk/pages/bookmark.dart';
import 'package:perpustakaan_itk/pages/notification.dart';
import 'package:perpustakaan_itk/widgets/buku_terbaru.dart';
import 'package:perpustakaan_itk/widgets/carousel.dart';
import 'package:perpustakaan_itk/widgets/rekomendasi.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Bookmark(),
                  ),
                );
              },
              child: Icon(
                Icons.bookmark_outline,
                color: Colors.white,
              )),
          SizedBox(
            width: 5,
          ),
          Center(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => NotificationPage(),
                      ),
                    ).then((value) => setState(() {}));
                    bacaNotifikasi();
                  },
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                ),
                StreamBuilder<bool>(
                    stream: cekNotifikasi(context),
                    builder: (context, snapshot) {
                      return Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: snapshot.data == false
                                ? Colors.transparent
                                : Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
        elevation: 0,
        backgroundColor: Color(0xff6759ff),
        title: Text(
          'PERPUS ITK',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xff6759ff),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(5)),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Carousel(),
                    SizedBox(
                      height: 20,
                    ),
                    Rekomendasi(),
                    SizedBox(
                      height: 5,
                    ),
                    // TerakhirDibaca(),
                    SizedBox(
                      height: 25,
                    ),
                    BukuTerbaru(),

                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
