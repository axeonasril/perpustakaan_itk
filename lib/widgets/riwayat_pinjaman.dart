import 'package:flutter/material.dart';

class RiwayatPinjaman extends StatefulWidget {
  const RiwayatPinjaman({Key key}) : super(key: key);

  @override
  State<RiwayatPinjaman> createState() => _RiwayatPinjamanState();
}

class _RiwayatPinjamanState extends State<RiwayatPinjaman> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE4E4E4), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/buku4.png',
                            height: 65,
                            width: 60,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MENGENAL RASULULLAH LEBIH DEKAT',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 12),
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
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Dipinjam 01 April 2022',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Color(0xff696969)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    iconSize: 30,
                    color: Color(0xffC4C4C4),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
