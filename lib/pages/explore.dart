import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/core/controller/book.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';
import 'package:perpustakaan_itk/widgets/eksplor_ebook.dart';
import 'package:perpustakaan_itk/widgets/eksplor_kategori.dart';
import 'package:perpustakaan_itk/widgets/eksplor_ruangan.dart';

class Explore extends StatefulWidget {
  const Explore({Key key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  TextEditingController search = TextEditingController();

  String query = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        title: Text(
          'EKSPLOR PERPUSTAKAAN ITK',
          style: GoogleFonts.openSans(
            color: Color(0xff001AFF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 45,
            padding: EdgeInsets.only(left: 0),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: search,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
                border: InputBorder.none,
                hintText: 'Cari',
              ),
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
            ),
          ),
          query == ''
              ? Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    EksplorEbook(),
                    SizedBox(
                      height: 30,
                    ),
                    EksplorRuangan(),
                  ],
                )
              : FutureBuilder<List<BookCover>>(
                  future: searchBook(context, query),
                  builder: (context, snapshot) {
                    return snapshot.data == null
                        ? Container()
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (BuildContext context) => DetailBuku(
                                  //       detailBuku: BookCover.fromJson(
                                  //           snapshot.data[index].dokumen.toJson()),
                                  //     ),
                                  //   ),
                                  // ).then(
                                  //   (_) => setState(() {}),
                                  // );
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  padding: EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffE4E4E4), width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.all(15),
                                              child: Row(
                                                children: [
                                                  Image.network(
                                                    snapshot.data[index]
                                                        .gambarDokumen,
                                                    height: 65,
                                                    width: 60,
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          snapshot.data[index]
                                                              .judul,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              fontSize: 12),
                                                        ),
                                                        SizedBox(
                                                          height: 4,
                                                        ),
                                                        Text(
                                                          snapshot.data[index]
                                                              .penerbit
                                                              .toString(),
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff696969)),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            alignment: Alignment.center,
                                            onPressed: () {},
                                            icon: Icon(Icons.more_vert),
                                            iconSize: 30,
                                            color: Color(0xffC4C4C4),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                  }),
        ],
      ),
    );
  }
}
