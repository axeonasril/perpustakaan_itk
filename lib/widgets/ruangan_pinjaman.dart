import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:perpustakaan_itk/core/controller/ruangan.dart';
import 'package:perpustakaan_itk/core/models/invoice.dart' as model;
import 'package:perpustakaan_itk/pages/invoice.dart';

class RuanganPinjaman extends StatefulWidget {
  const RuanganPinjaman({Key key}) : super(key: key);

  @override
  State<RuanganPinjaman> createState() => _RuanganPinjamanState();
}

class _RuanganPinjamanState extends State<RuanganPinjaman> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<model.Invoice>>(
        future: getRuanganPinjaman(context),
        builder: (context, snapshot) {
          return snapshot.data == null
              ? Container()
              : ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Invoice(
                              invoice: snapshot.data[index],
                              riwayat: true,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                          ),
                          Container(
                            width: 350,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshot.data[index].ruangan
                                                    .namaRuangan,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                DateFormat('d/M/y').format(
                                                    snapshot
                                                        .data[index].tanggal),
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
                                      snapshot.data[index].status,
                                      style: TextStyle(
                                          color: snapshot.data[index].status ==
                                                  'Menunggu'
                                              ? Colors.orange
                                              : Color(0xff45D476),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
        });
  }
}
