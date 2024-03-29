import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart';
import 'package:perpustakaan_itk/core/models/buku_pinjaman_model.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';

import '../core/controller/buku_pinjaman_controller.dart';

class RiwayatPinjaman extends StatefulWidget {
  const RiwayatPinjaman({Key key}) : super(key: key);

  @override
  State<RiwayatPinjaman> createState() => _RiwayatPinjamanState();
}

class _RiwayatPinjamanState extends State<RiwayatPinjaman> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BukuPinjamanModel>>(
        future: getRiwayatBook(context),
        builder: (context, snapshot) {
          return snapshot.data == null
              ? Container(
                  child: Text('Loading'),
                )
              : ListView.builder(
                
                  physics: BouncingScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => DetailBuku(
                              detailBuku: BookCover.fromJson(
                                  snapshot.data[index].dokumen.toJson()),
                            ),
                          ),
                        ).then(
                          (_) => setState(() {}),
                        );
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffE4E4E4), width: 1),
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
                                        Image.network(
                                          snapshot.data[index].gambarDokumen,
                                          height: 65,
                                          width: 60,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshot
                                                    .data[index].dokumen.judul,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                snapshot.data[index].dokumen
                                                    .penerbit
                                                    .toString(),
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12,
                                                    color: Color(0xff696969)),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                'Dipinjam ' +
                                                    snapshot.data[index]
                                                        .tglPeminjaman,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
        });
  }
}
