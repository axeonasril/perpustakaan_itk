import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:perpustakaan_itk/core/controller/checkin.dart';

class Scan extends StatefulWidget {
  const Scan({Key key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String code = '';
  bool data = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SCAN',
          style: GoogleFonts.openSans(
            color: Color(0xff001AFF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          MobileScanner(
            allowDuplicates: false,
            controller: MobileScannerController(
                facing: CameraFacing.back, torchEnabled: false),
            onDetect: (barcode, args) {
              if (barcode.rawValue == null) {
                debugPrint('Failed to scan Barcode');
              } else {
                setState(
                  () {
                    code = barcode.rawValue;
                  },
                );
                if (code ==
                    'https://digilib.itk.ac.id/Lumen-PerpustakaanITK/public/api/checkin-pengunjung') {
                  checkin(context);
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Gagal'),
                        content: Text('QR Tidak Valid'),
                      );
                    },
                  );
                }
              }
            },
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 40,
            right: 40,
            child: Center(
              child: Icon(
                FeatherIcons.maximize,
                size: 150,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
