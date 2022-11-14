import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6759FF),
        title: Text(
          'INVOICE',
          style: GoogleFonts.openSans(
            color: Color(0xffFFFFFF),
            fontSize: 17,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Color(0xff6759ff),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(5)),
                ),
              ),
            ],
          ),
          Positioned(
            top: 30,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  width: 350,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffE2E2E2), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_sharp,
                              size: 50,
                              color: Color(0xff42F67F),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Booking Berhasil!',
                                  style: TextStyle(
                                    color: Color(0xff42F67F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  'Mohon tunggu konfirmasi selanjutnya',
                                  style: TextStyle(
                                    color: Color(0xff939393),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25),
                          width: 250,
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xffEFEFEF)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'INVOICE NUMBER',
                          style: TextStyle(
                            color: Color(0xff939393),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
