import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/pages/booking_ruangan.dart';

class EksplorRuangan extends StatefulWidget {
  const EksplorRuangan({Key key}) : super(key: key);

  @override
  State<EksplorRuangan> createState() => _EksplorRuanganState();
}

class _EksplorRuanganState extends State<EksplorRuangan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return BookingRuangan();
              }));
            },
            child: Text(
              'RUANGAN',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
