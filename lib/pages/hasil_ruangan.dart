import 'package:flutter/material.dart';

import 'konfirmasi_booking.dart';

class HasilRuangan extends StatefulWidget {
  const HasilRuangan({Key key}) : super(key: key);

  @override
  State<HasilRuangan> createState() => _HasilRuanganState();
}

class _HasilRuanganState extends State<HasilRuangan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hasil Pencarian',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff666160),
                ),
              ),
              Text(
                '1 Ruangan',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff666160),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE2E2E2), width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/ruangan1.png',
                          height: 75,
                          width: 75,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ruang Audit',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 15),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Max 10 orang',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xff696969)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return KonfirmasiBooking();
                                }));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 55),
                                decoration: BoxDecoration(
                                    color: Color(0xff0047FF),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    'PILIH RUANGAN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
