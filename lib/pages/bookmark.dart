import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/core/controller/bookmark.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart';
import 'package:perpustakaan_itk/core/models/bookmark_models.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({Key key}) : super(key: key);

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            CurrentPage.goHome();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TabDecider()));
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        title: Text(
          'FAVORIT SAYA',
          style: GoogleFonts.openSans(
            color: Color(0xff222149),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: FutureBuilder<List<BookmarkModels>>(
                    future: getBookmarkList(context),
                    builder: (BuildContext context,
                        AsyncSnapshot<List<BookmarkModels>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                            child: Text('Please wait its loading...'));
                      } else {
                        if (snapshot.hasError)
                          return Center(
                              child: Text('Error: ${snapshot.error}'));
                        return ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailBuku(
                                      detailBuku: BookCover.fromJson(snapshot
                                          .data[index].dokumen
                                          .toJson()),
                                    ),
                                  ),
                                ).then(
                                  (_) => setState(() {}),
                                );
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
                                        Container(
                                          padding: EdgeInsets.all(15),
                                          child: Row(
                                            children: [
                                              Image.network(
                                                snapshot
                                                    .data[index].gambarDokumen,
                                                height: 65,
                                                width: 60,
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    snapshot.data[index].dokumen
                                                        .judul,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'Oleh ' +
                                                        snapshot
                                                            .data[index]
                                                            .dokumen
                                                            .namaPengarang,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff696969)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.remove_circle),
                                          color: Colors.red,
                                          onPressed: () {
                                            removeBookmark(context,
                                                snapshot.data[index].id);
                                            Future.delayed(Duration(seconds: 1),
                                                () {
                                              setState(() {});
                                            });
                                          },
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
                    })),
          ],
        ),
      ),
    );
  }
}
