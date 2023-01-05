import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/core/controller/book.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';

class DetailBookKategoriPage extends StatefulWidget {
  final String id;
  const DetailBookKategoriPage({Key key, this.id}) : super(key: key);

  @override
  State<DetailBookKategoriPage> createState() => _DetailBookKategoriPageState();
}

class _DetailBookKategoriPageState extends State<DetailBookKategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6759FF),
        title: Text(
          'DETAIL KATEGORI',
          style: GoogleFonts.openSans(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: FutureBuilder<List<BookCover>>(
          future: getBookByKategori(context, widget.id),
          builder:
              (BuildContext context, AsyncSnapshot<List<BookCover>> snapshot) {
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
                            detailBuku: snapshot.data[index],
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
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data[index].judul,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          snapshot.data[index].penerbit,
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Color(0xff696969)),
                                        ),
                                        SizedBox(
                                          height: 15,
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
          }),
    );
  }
}
