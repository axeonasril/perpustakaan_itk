import 'dart:ui';

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
                  height: 450,
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
                          height: 15,
                        ),
                        Text(
                          'INVOICE NUMBER',
                          style: TextStyle(
                            color: Color(0xff939393),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '#98HJ2L',
                          style: TextStyle(
                              color: Color(0xff222149),
                              fontWeight: FontWeight.w700,
                              fontSize: 45),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tanggal Booking',
                                  style: TextStyle(
                                    color: Color(
                                      0xff939393,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '30/11/2022',
                                  style: TextStyle(
                                      color: Color(0xff222149),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Nama Ruangan',
                                  style: TextStyle(
                                    color: Color(
                                      0xff939393,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Ruang Belajar',
                                  style: TextStyle(
                                      color: Color(0xff222149),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jam Pemakaian',
                                  style: TextStyle(
                                    color: Color(
                                      0xff939393,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '12.30 - 13.30',
                                  style: TextStyle(
                                      color: Color(0xff222149),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Status',
                                  style: TextStyle(
                                    color: Color(
                                      0xff939393,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Pending',
                                  style: TextStyle(
                                      color: Color(0xffE0AA1D),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  width: 100,
                                  height: 2,
                                  decoration:
                                      BoxDecoration(color: Color(0xffEFEFEF)),
                                ),
                                Text(
                                  'Data Pemohon',
                                  style: TextStyle(
                                      color: Color(0xff939393),
                                      fontWeight: FontWeight.w400),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  width: 100,
                                  height: 2,
                                  decoration:
                                      BoxDecoration(color: Color(0xffEFEFEF)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nama Pemohon',
                                      style: TextStyle(
                                        color: Color(0xff222149),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Email Pemohon',
                                      style: TextStyle(
                                        color: Color(0xff222149),
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Role Pemohon',
                                      style: TextStyle(
                                        color: Color(0xff222149),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) {
                    //       return Invoice();
                    //     },
                    //   ),
                    // );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff0047FF),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'LIHAT INVOICE',
                          style: TextStyle(
                              color: Color(0xff0047FF),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
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
