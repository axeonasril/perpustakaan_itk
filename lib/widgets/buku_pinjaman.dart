import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/controller/buku_pinjaman_controller.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart';
import 'package:perpustakaan_itk/core/models/buku_pinjaman_model.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';

class BukuPinjaman extends StatefulWidget {
  const BukuPinjaman({Key key, this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  State<BukuPinjaman> createState() => _BukuPinjamanState();
}

class _BukuPinjamanState extends State<BukuPinjaman> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BukuPinjamanModel>>(
        future: getBook(context),
        builder: (BuildContext context,
            AsyncSnapshot<List<BukuPinjamanModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Text('Please wait its loading...'));
          } else {
            if (snapshot.hasError)
              return Center(child: Text('Error: ${snapshot.error}'));
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
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
                                  Image.network(
                                    snapshot.data[index].gambarDokumen,
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
                                        snapshot.data[index].dokumen.judul,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        snapshot.data[index].dokumen.penerbit,
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            color: Color(0xff696969)),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        snapshot.data[index].tglPeminjaman +
                                            '- ' +
                                            snapshot.data[index].durasiPeminjaman,
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
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ); // snapshot.data  :- get your object which is pass from your downloadData() function
          }
        });
  }
}
