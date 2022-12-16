// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:perpustakaan_itk/core/models/buku_pinjaman_model.dart';
// import 'package:perpustakaan_itk/utils/env.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// Future<List<BukuPinjamanModel>> getBook(BuildContext context) async {
//   List<BukuPinjamanModel> book = [];
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   try {
//     Dio dio = Dio();
//     Response response = await dio.get(
//       urlApi + '/',
//       options: Options(
//         headers: {
//           'Authorization': 'Bearer ' + prefs.getString('token'),
//         },
//       ),
//     );
//     if (response.data['data'] == null) {
//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Gagal load'),
//               content: Text('Kategori kosong'),
//             );
//           });
//     } else {
//       response.data['data']
//           .forEach((e) => book.add(BukuPinjamanModel.fromJson(e)));
//     }
//     print(response.data);
//   } catch (e) {
//     print(e);
//   }
//   return book;
// }
