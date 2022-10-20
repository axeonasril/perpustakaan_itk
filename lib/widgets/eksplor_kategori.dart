import 'package:flutter/material.dart';

class EksplorKategori extends StatefulWidget {
  const EksplorKategori({Key key}) : super(key: key);

  @override
  State<EksplorKategori> createState() => _EksplorKategoriState();
}

class _EksplorKategoriState extends State<EksplorKategori> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'KATEGORI',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
          )
        ],
      )),
    );
  }
}
