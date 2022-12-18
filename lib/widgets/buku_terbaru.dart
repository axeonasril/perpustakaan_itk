import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/controller/book.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';
import 'package:perpustakaan_itk/widgets/book_cover.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart' as model;

class BukuTerbaru extends StatefulWidget {
  const BukuTerbaru({Key key}) : super(key: key);

  @override
  State<BukuTerbaru> createState() => _BukuTerbaruState();
}

class _BukuTerbaruState extends State<BukuTerbaru> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'BUKU TERBARU',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: FutureBuilder<List<model.BookCover>>(
              future: getBook(context),
              builder: (BuildContext context,
                  AsyncSnapshot<List<model.BookCover>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Text('Please wait its loading...'),
                  );
                } else {
                  if (snapshot.hasError)
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    scrollDirection: Axis.horizontal,
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
                        child: BookCover(
                          book: snapshot.data[index],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
