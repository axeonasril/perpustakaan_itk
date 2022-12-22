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
            height: 100,
            width: 100,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            book.judul,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            book.namaPengarang,
            style: TextStyle(fontSize: 13, color: Color(0xff696969)),
          ),
        ],
      ),
    );
  }
}
