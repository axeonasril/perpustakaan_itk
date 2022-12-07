import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import 'package:perpustakaan_itk/pages/hasil_ruangan.dart';
import 'package:perpustakaan_itk/pages/ruangan_saya.dart';

class BookingRuangan extends StatefulWidget {
  const BookingRuangan({Key key}) : super(key: key);

  @override
  State<BookingRuangan> createState() => _BookingRuanganState();
}

class _BookingRuanganState extends State<BookingRuangan> {
  DateTime selectedDate = DateTime.now();
  String tanggal = DateFormat('d/M/y').format(DateTime.now());

  String awalhour, awalminute = '';
  String awaltime = '00:00';
  String akhirhour, akhirminute = '';
  String akhirtime = '00:00';

  TimeOfDay awalSelectedTime = TimeOfDay(hour: 00, minute: 00);
  TimeOfDay akhirSelectedTime = TimeOfDay(hour: 00, minute: 00);

  bool cariRuangan = false;

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        tanggal = DateFormat('d/M/y').format(selectedDate);
      });
  }

  Future<Null> awalSelectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: awalSelectedTime,
    );
    if (picked != null)
      setState(() {
        awalSelectedTime = picked;
        awalhour = awalSelectedTime.hour.toString();
        awalminute = awalSelectedTime.minute.toString();
        awaltime = awalhour + ' : ' + awalminute;
        awaltime = formatDate(
            DateTime(
                2019, 08, 1, awalSelectedTime.hour, awalSelectedTime.minute),
            [hh, ':', nn]).toString();
      });
  }

  Future<Null> akhirSelectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: akhirSelectedTime,
    );
    if (picked != null)
      setState(() {
        akhirSelectedTime = picked;
        akhirhour = akhirSelectedTime.hour.toString();
        akhirminute = akhirSelectedTime.minute.toString();
        akhirtime = akhirhour + ' : ' + akhirminute;
        akhirtime = formatDate(
            DateTime(
                2019, 08, 1, akhirSelectedTime.hour, akhirSelectedTime.minute),
            [hh, ':', nn]).toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return RuanganSaya();
                  },
                ),
              );
            },
            icon: Icon(Icons.history_outlined),
            color: Colors.white,
          ),
        ],
        leading: BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6759FF),
        title: Text(
          'BOOKING RUANGAN',
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
                height: 150,
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
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      width: 350,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xffE4E4E4), width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tanggal',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                selectDate(context);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xff989392),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(tanggal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Waktu Awal',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          awalSelectTime(context);
                                        },
                                        child: Container(
                                          width: 250,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xff989392),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: Text(awaltime),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Waktu Akhir',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          akhirSelectTime(context);
                                        },
                                        child: Container(
                                          width: 250,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xff989392),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: Text(akhirtime),
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
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  cariRuangan = true;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xff0047FF),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    'CARI RUANGAN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    cariRuangan == true ? HasilRuangan() : Container(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
