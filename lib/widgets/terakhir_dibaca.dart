import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:meta/meta_meta.dart';

class TerakhirDibaca extends StatefulWidget {
  const TerakhirDibaca({Key key}) : super(key: key);

  @override
  State<TerakhirDibaca> createState() => _TerakhirDibacaState();
}

class _TerakhirDibacaState extends State<TerakhirDibaca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TERAKHIR DIBACA',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
              ),
              Text(
                'Lihat Semua',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff696969)),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/buku4.png',
                    height: 43,
                    width: 42,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MENGENAL RASUL',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 12),
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
              Text(
                'Hari Ini',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Color(0xff696969)),
              )
            ],
          ))
        ],
      ),
    );
  }
}
