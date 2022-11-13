import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/book.dart';

class BookCover extends StatelessWidget {
  const BookCover(
    book, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Book book;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://kubalubra.is/wp-content/uploads/2017/11/default-thumbnail.jpg',
            height: 120,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            book.judul,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            book.namaPengarang,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Color(0xff696969)),
          ),
        ],
      ),
    );
  }
}
