import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/bookmark_models.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<BookmarkModels>> getBookmarkList(BuildContext context) async {
  List<BookmarkModels> bookmarklist = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.get(
      urlApi + '/bookmark',
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
    print(response.data);
    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal load'),
              content: Text('Kategori kosong'),
            );
          });
    } else {
      response.data['data'].forEach(
        (e) => bookmarklist.add(
          BookmarkModels.fromJson(e),
        ),
      );
    }
  } catch (e) {
    print(e);
  }
  return bookmarklist;
}

void addBookmark(BuildContext context, dokumenId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    Response response = await dio.post(
      urlApi + '/bookmark',
      data: {
        'dokumen_id': dokumenId,
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
    if (response.data['data'] == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Gagal load'),
              content: Text('Kategori kosong'),
            );
          });
    } else {
      if (response.data['data']['message'] == "Bookmark Berhasil Ditambahkan") {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Berhasil'),
                content: Text('Berhasil Menambahkan ke Favorit'),
              );
            });
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Berhasil'),
                content: Text('Berhasil Menghapus dari Favorit'),
              );
            });
      }
    }
  } catch (e) {
    print(e);
  }
}

void removeBookmark(BuildContext context, id) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    Dio dio = Dio();
    await dio.delete(
      urlApi + '/bookmark/' + id.toString(),
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Berhasil'),
            content: Text('Dokumen berhasil dihapus'),
          );
        });
  } catch (e) {
    print(e);
  }
}
