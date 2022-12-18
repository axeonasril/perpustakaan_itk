import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/pages/booking_ruangan.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';
import 'package:perpustakaan_itk/widgets/riwayat_pinjaman_ruangan.dart';
import 'package:perpustakaan_itk/widgets/ruangan_pinjaman.dart';

class RuanganSaya extends StatefulWidget {
  const RuanganSaya({Key key}) : super(key: key);

  @override
  State<RuanganSaya> createState() => _RuanganSayaState();
}

class _RuanganSayaState extends State<RuanganSaya> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
                builder: (BuildContext context) => BookingRuangan(),
              ),
            );
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        title: Text(
          'RUANGAN SAYA',
          style: GoogleFonts.openSans(
            color: Color(0xff222149),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: RuanganPinjaman(),
    );
  }
}
