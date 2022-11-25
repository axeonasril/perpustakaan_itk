import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:perpustakaan_itk/core/models/bookmark_models.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('Hapus Bookmark Test', () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Dio dio = Dio();
    Response response = await dio.delete(
      url_api + '/bookmark/1',
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
    expect(response.data['data'] == null, true);
  });
}
