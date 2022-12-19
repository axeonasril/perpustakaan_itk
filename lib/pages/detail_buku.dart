import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/core/controller/book.dart';
import 'package:perpustakaan_itk/core/controller/bookmark.dart';
import 'package:perpustakaan_itk/core/models/book.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart';
import 'package:perpustakaan_itk/pages/baca_buku.dart';
import 'package:flutter/gestures.dart';

class DetailBuku extends StatefulWidget {
  final BookCover detailBuku;
  const DetailBuku({Key key, this.detailBuku}) : super(key: key);

  @override
  State<DetailBuku> createState() => _DetailBukuState();
}

class _DetailBukuState extends State<DetailBuku> {
  bool bookmarkAdded = false;
  bool isPinjamBuku = false;
  bool expanded = false;
  setisPinjamBuku() {
    setState(() {
      isPinjamBuku = widget.detailBuku.isPinjam;
    });
  }

  setBookmark() {
    setState(() {
      bookmarkAdded = widget.detailBuku.isBookmark;
    });
  }

  @override
  void initState() {
    setBookmark();
    setisPinjamBuku();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6759FF),
        title: Text(
          'DETAIL BUKU',
          style: GoogleFonts.openSans(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: ListView(
        children: [
          FutureBuilder<Book>(
              future: showBook(context, widget.detailBuku.id),
              builder: (context, snapshot) {
                if (snapshot.data != null) {
                  isPinjamBuku = snapshot.data.isPinjam;
                }
                return snapshot.data == null
                    ? Center(child: CircularProgressIndicator())
                    : Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff6759ff),
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(5)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Image.network(
                                snapshot.data.gambarDokumen ??
                                    'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=',
                                height: 120,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                snapshot.data.judul.toString(),
                                style: GoogleFonts.openSans(
                                  color: Color(0xff222149),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Oleh ' +
                                    snapshot.data.namaPengarang.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0xff696969),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Jurusan ' + (snapshot.data.jurusan ?? '-'),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff696969),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Kategori',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: Color(0xff939393),
                                          ),
                                        ),
                                        Text(snapshot.data.kategori.namaKategori
                                            .toString())
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Total Pinjam',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: Color(0xff939393),
                                          ),
                                        ),
                                        Text(snapshot.data.tahunTerbit
                                            .toString())
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Tahun',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                            color: Color(0xff939393),
                                          ),
                                        ),
                                        Text(snapshot.data.tahunTerbit
                                            .toString())
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Introduction',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17,
                                        color: Color(0xff222149),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      textAlign: TextAlign.justify,
                                      text: new TextSpan(
                                          text: expanded == false
                                              ? snapshot.data.deskripsi
                                                          .toString()
                                                          .replaceAll('<p>', '')
                                                          .replaceAll(
                                                              '</p>', ' ')
                                                          .length <
                                                      380
                                                  ? snapshot.data.deskripsi
                                                      .toString()
                                                      .replaceAll('<p>', '')
                                                      .replaceAll('</p>', ' ')
                                                  : snapshot.data.deskripsi
                                                          .toString()
                                                          .replaceAll('<p>', '')
                                                          .replaceAll(
                                                              '</p>', '')
                                                          .substring(0, 380) +
                                                      '... '
                                              : snapshot.data.deskripsi
                                                  .toString()
                                                  .replaceAll('<p>', '')
                                                  .replaceAll('</p>', ' '),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color(0xff939393)),
                                          children: [
                                            new TextSpan(
                                              text: expanded == false
                                                  ? 'Show More'
                                                  : 'Show Less',
                                              recognizer:
                                                  new TapGestureRecognizer()
                                                    ..onTap = () {
                                                      setState(() {
                                                        expanded = !expanded;
                                                      });
                                                    },
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  color: Colors.blue[900]),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Another Book',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17,
                                        color: Color(0xff222149),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 140,
                                      child: ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/buku8.png',
                                                  height: 100,
                                                  width: 100,
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  'Judul Buku',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (isPinjamBuku == false) {
                                            pinjamBuku(
                                                context, widget.detailBuku.id);
                                            setState(
                                              () {
                                                isPinjamBuku = true;
                                              },
                                            );
                                          } else {
                                            Navigator.push(context,
                                                MaterialPageRoute(builder:
                                                    (BuildContext context) {
                                              return BacaBuku(
                                                book: snapshot.data,
                                                url: snapshot
                                                    .data.fullDokumen['file']
                                                    .toString(),
                                              );
                                            }));
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 15, horizontal: 15),
                                          decoration: BoxDecoration(
                                              color: Color(0xff6759ff),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: isPinjamBuku == false
                                                ? Text(
                                                    'Pinjam Buku',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )
                                                : Text(
                                                    'Baca Buku',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        addBookmark(
                                            context, widget.detailBuku.id);
                                        setState(() {
                                          bookmarkAdded = !bookmarkAdded;
                                        });
                                      },
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 15),
                                          decoration: BoxDecoration(
                                              color: Color(0xff6759ff),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Icon(
                                            bookmarkAdded == true
                                                ? Icons.bookmark
                                                : Icons.bookmark_outline,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ],
                      );
              }),
        ],
      ),
    );
  }
}
