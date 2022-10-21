import 'package:flutter/material.dart';

class EksplorEbook extends StatefulWidget {
  const EksplorEbook({Key key}) : super(key: key);

  @override
  State<EksplorEbook> createState() => _EksplorEbookState();
}

class _EksplorEbookState extends State<EksplorEbook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'E-BOOK',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/buku1.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Teknologi',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/sosial.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Sosial',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/agama.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Agama',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/buku1.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Teknologi',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/sosial.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Sosial',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/agama.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Agama',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/buku1.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Teknologi',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/sosial.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Sosial',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/agama.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Agama',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          '10 Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
