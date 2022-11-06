import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';
import 'package:perpustakaan_itk/widgets/buku_pinjaman.dart';
import 'package:perpustakaan_itk/widgets/riwayat_pinjaman.dart';

class BukuSaya extends StatefulWidget {
  const BukuSaya({Key key}) : super(key: key);

  @override
  State<BukuSaya> createState() => _BukuSayaState();
}

class _BukuSayaState extends State<BukuSaya>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            CurrentPage.goHome();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TabDecider()));
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        title: Text(
          'BUKU SAYA',
          style: GoogleFonts.openSans(
            color: Color(0xff222149),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              text: "Buku Pinjaman",
            ),
            new Tab(
              text: "Riwayat Pinjaman",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          BukuPinjaman(),
          RiwayatPinjaman(),
        ],
      ),
    );
  }
}
