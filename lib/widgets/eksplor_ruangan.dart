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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.4),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ingin cari ruangan?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Cari ruangan berdasarkan tanggal kebutuhanmu',
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return BookingRuangan();
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Color(0xff6759ff),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Cari Ruangan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
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
