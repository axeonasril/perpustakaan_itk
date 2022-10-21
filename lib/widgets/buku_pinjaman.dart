import 'package:flutter/material.dart';

class BukuPinjaman extends StatefulWidget {
  const BukuPinjaman({Key key}) : super(key: key);

  @override
  State<BukuPinjaman> createState() => _BukuPinjamanState();
}

class _BukuPinjamanState extends State<BukuPinjaman> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          Row(
            children: [
              Image.asset(
                'assets/buku4.png',
                height: 100,
                width: 100,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MENGENAL RASULULLAH LEBIH DEKAT',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Oleh Imam At-Tirmidzi',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Color(0xff696969)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
