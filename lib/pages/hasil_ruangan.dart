import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/controller/ruangan.dart';
import 'package:perpustakaan_itk/core/models/booking_ruangan.dart';

import 'konfirmasi_booking.dart';

class HasilRuangan extends StatefulWidget {
  final String tanggal;
  final String waktu_awal;
  final String waktu_akhir;
  const HasilRuangan({Key key, this.tanggal, this.waktu_awal, this.waktu_akhir})
      : super(key: key);

  @override
  State<HasilRuangan> createState() => _HasilRuanganState();
}

class _HasilRuanganState extends State<HasilRuangan> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BookingRuangan>>(
        future: getRuangan(context, widget.tanggal.split(' ')[0],
            widget.waktu_awal, widget.waktu_akhir),
        builder: (context, snapshot) {
          return snapshot.data == null
              ? Container()
              : Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 35,
                        right: 35,
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
                            snapshot.data.length.toString() + ' Ruangan',
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
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                left: 30, right: 30, bottom: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffE2E2E2), width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/ruangan1.png',
                                            height: 75,
                                            width: 75,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshot
                                                    .data[index].namaRuangan,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                'Max ' +
                                                    snapshot.data[index]
                                                        .jumlahOrang +
                                                    ' orang',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xff696969)),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  if (snapshot.data[index]
                                                      .statusKursi) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (BuildContext
                                                            context) {
                                                          return KonfirmasiBooking(
                                                            ruangan: snapshot
                                                                .data[index],
                                                            tanggal:
                                                                widget.tanggal,
                                                            waktu_awal: widget
                                                                .waktu_awal,
                                                            waktu_akhir: widget
                                                                .waktu_akhir,
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  }
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 70),
                                                  decoration: BoxDecoration(
                                                    color: snapshot.data[index]
                                                                .statusKursi ==
                                                            false
                                                        ? Colors.grey
                                                        : Color(0xff0047FF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'PILIH RUANGAN',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w800),
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
                          );
                        }),
                  ],
                );
        });
  }
}
