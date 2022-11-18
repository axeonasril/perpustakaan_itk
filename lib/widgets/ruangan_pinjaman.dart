import 'package:flutter/material.dart';

class RuanganPinjaman extends StatefulWidget {
  const RuanganPinjaman({Key key}) : super(key: key);

  @override
  State<RuanganPinjaman> createState() => _RuanganPinjamanState();
}

class _RuanganPinjamanState extends State<RuanganPinjaman> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(right: 50),
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
                                  height: 5,
                                ),
                                Text(
                                  '30/11/2022',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff696969),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // STATUS PINJAMAN
                      Text(
                        'Diterima',
                        style: TextStyle(
                            color: Color(0xff45D476),
                            fontWeight: FontWeight.w500),
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
