import 'package:flutter/material.dart';

class BukuPinjaman extends StatefulWidget {
  const BukuPinjaman({Key key, this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  State<BukuPinjaman> createState() => _BukuPinjamanState();
}

class _BukuPinjamanState extends State<BukuPinjaman> {
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
                  Container(
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MENGENAL RASULULLAH LEBIH DEKAT',
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
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Dipinjam 01 April 2022 - Tersisa 2 hari',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Color(0xff696969)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    onPressed: () {
                      DropdownButton(
                        items: [],
                        onChanged: (value) {},
                      );
                    },
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
