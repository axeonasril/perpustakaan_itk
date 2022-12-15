// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/book_cover.dart' as model;

class BookCover extends StatelessWidget {
  model.BookCover book;
  BookCover({
    Key key,
    this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            book.gambarDokumen,
            height: 120,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            book.judul,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            book.namaPengarang,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13,
                color: Color(0xff696969)),
          ),
        ],
      ),
    );
  }
}
