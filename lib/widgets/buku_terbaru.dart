import 'package:flutter/material.dart';

class BukuTerbaru extends StatefulWidget {
  const BukuTerbaru({Key key}) : super(key: key);

  @override
  State<BukuTerbaru> createState() => _BukuTerbaruState();
}

class _BukuTerbaruState extends State<BukuTerbaru> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'BUKU TERBARU',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/buku5.png',
                        height: 120,
                        width: 100,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'PETUNJUK PRAKTIS',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Oleh Andi Wahyu',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color(0xff696969)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/buku2.png',
                        height: 120,
                        width: 100,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'PENGANTAR TEKNO',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Oleh Andi Wahyu',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color(0xff696969)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/buku3.png',
                        height: 120,
                        width: 100,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'ENSIKLOPEDIA Ma',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Oleh Aminuddin',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color(0xff696969)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
