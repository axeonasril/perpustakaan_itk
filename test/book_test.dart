import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('Get Book', () async {
    bool isBookExist = false;
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Dio dio = Dio();
    Response response = await dio.post(
      urlApi + '/login',
      data: {'email': 'admin@gmail.com', 'password': '123123123'},
    );
    if (response.data['data'] == null) {
      print('error');
    } else {
      prefs.setString('token', response.data['data']['token'].toString());
    }
    await dio.get(urlApi + '/dokumen',
        options: Options(
            headers: {'Authorization': 'Bearer ' + prefs.getString('token')}));

    isBookExist = true;

    expect(isBookExist, true);
  });
  test('Pinjam Buku', () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Dio dio = Dio();
     await dio.post(
      urlApi + '/peminjaman-dokumen',
      data: {
        'dokumen_id': 1,
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer ' + prefs.getString('token'),
        },
      ),
    );
  });
}
