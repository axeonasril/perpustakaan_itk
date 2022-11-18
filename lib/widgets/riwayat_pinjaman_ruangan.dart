import 'package:flutter/material.dart';

class RiwayatPinjamanRuangan extends StatefulWidget {
  const RiwayatPinjamanRuangan({Key key}) : super(key: key);

  @override
  State<RiwayatPinjamanRuangan> createState() => _RiwayatPinjamanRuanganState();
}

class _RiwayatPinjamanRuanganState extends State<RiwayatPinjamanRuangan> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 35,
                right: 35,
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
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Max 10 orang',
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff696969)),
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
      },
    );
  }
}
