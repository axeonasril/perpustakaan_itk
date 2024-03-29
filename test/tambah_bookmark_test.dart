import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:perpustakaan_itk/core/models/bookmark_models.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('Tambah Bookmark Test', () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Dio dio = Dio();
    var bookmarklist = [];
    Response response = await dio.get(
      urlApi + '/bookmark',
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
    if (response.data['data'] == null) {
      print('error');
    } else {
      
      response.data['data']
          .forEach((e) => bookmarklist.add(BookmarkModels.fromJson(e)));
    }
    expect(bookmarklist != null, true);
  });
}
