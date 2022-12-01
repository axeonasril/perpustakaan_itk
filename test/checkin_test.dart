import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('Checkin Pengunjung', () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Dio dio = Dio();
    Response response = await dio.post(
      url_api + '/checkin-pengunjung',
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
    expect(response.data['data'] != null, true);
  });
}
