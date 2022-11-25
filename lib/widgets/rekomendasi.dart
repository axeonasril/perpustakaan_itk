import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/controller/book.dart';
import 'package:perpustakaan_itk/core/models/book.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';
import 'package:perpustakaan_itk/widgets/book_cover.dart';

class Rekomendasi extends StatefulWidget {
  const Rekomendasi({Key key}) : super(key: key);

  @override
  State<Rekomendasi> createState() {
    return _RekomendasiState();
  }
}

class _RekomendasiState extends State<Rekomendasi> {
  @override
  Widget build(BuildContext context) {
    Book book;
    // final Future<List<Book>> bookList = getBook(context);
    // print(bookList);
    return Container(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'REKOMENDASI',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 15,
                color: Color(0xff222149)),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
              child: FutureBuilder<List<Book>>(
                  future: getBook(context),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Book>> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: Text('Please wait its loading...'));
                    } else {
                      if (snapshot.hasError)
                        return Center(child: Text('Error: ${snapshot.error}'));
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailBuku(
                                      detailBuku: snapshot.data[index],
                                    ),
                                  ),
                                ).then((_) => setState(() {}));
                              },
                              child: BookCover(book: snapshot.data[index]));
                        },
                      ); // snapshot.data  :- get your object which is pass from your downloadData() function
                    }
                  })

              // child: FutureBuilder(
              //   builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              //     return BookCover(bookList);
              //   },
              // child: ListView.builder(
              //   shrinkWrap: true,
              //   itemCount: bookList.,
              //   scrollDirection: Axis.horizontal,
              //   itemBuilder: (BuildContext context, int index) {
              //     return BookCover(bookList[index]);
              //   },
              // ),
              // ),
              )
        ],
      ),
    );
  }
}
