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
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'KATEGORI',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/TA.png',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tugas Akhir',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '10 Dokumen',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Color(0xff696969)),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/KP.png',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kerja Praktik',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '10 Dokumen',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 150,
            height: 2,
            decoration: BoxDecoration(color: Color(0xffEAEAEA)),
          )
        ],
      )),
    );
  }
}
