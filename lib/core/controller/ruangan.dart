import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/booking_ruangan.dart';
import 'package:perpustakaan_itk/core/models/invoice.dart' as model;
import 'package:perpustakaan_itk/pages/invoice.dart';
import 'package:perpustakaan_itk/utils/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<BookingRuangan>> getRuangan(
    BuildContext context, tanggal, waktu_awal, waktu_akhir) async {
  List<BookingRuangan> ruangan = [];
  SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Dio dio = Dio();
    Response response = await dio.get(
      url_api +
          '/ruang-kosong/' +
          tanggal +
          '/waktu_awal/' +
          waktu_awal +
          '/waktu_akhir/' +
          waktu_akhir,
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
              content: Text('Ruangan kosong'),
            );
          });
    } else {
      response.data['data'].forEach(
        (e) => ruangan.add(
          BookingRuangan.fromJson(e),
        ),
      );
    }
  } catch (e) {
    print(e);
  }
  return ruangan;
}

void bookingRuangan(
    context, ruangan, waktu_awal, waktu_akhir, keperluan, tanggal) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Dio dio = Dio();
    Response response = await dio.post(
      url_api + '/peminjaman-ruangan',
      data: {
        "ruangan": ruangan,
        "waktu_awal": waktu_awal,
        "waktu_akhir": waktu_akhir,
        "keperluan": keperluan,
        "tanggal": tanggal.split(' ')[0],
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
              title: Text('Gagal Booking Ruangan'),
              content: Text('Ruangan Sudah Dibooking'),
            );
          });
    } else {
      print(response.data['data']['data']);
      var invoice = model.Invoice.fromJson(response.data['data']['data']);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return Invoice(invoice: invoice);
          },
        ),
      );
    }
  } catch (e) {
    print(e);
  }
}


// Future<BookingRuangan> bookingRuangan(BuildContext context, id) async {
//   BookingRuangan ruangan;
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   try {
//     Dio dio = Dio();
//     print(id);
//     Response response = await dio.get(
//       url_api + '/ruangan' + id.toString(),
//       options: Options(
//         headers: {
//           'Authorization': 'Bearer ' + prefs.getString('token'),
//         },
//       ),
//     );
//     print(response.data);
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
//       ruangan = BookingRuangan.fromJson(response.data['data']);
//     }
//   } catch (e) {
//     print(e);
//   }
//   return ruangan;
// }

// void pinjamRuangan(context, id) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   try {
//     Dio dio = Dio();
//     Response response = await dio.post(
//       url_api + '/ruangan',
//       data: {
//         'dokumen_id': id.toString(),
//       },
//       options: Options(
//         headers: {
//           'Authorization': 'Bearer ' + prefs.getString('token'),
//         },
//       ),
//     );
//     print(response.data['data']);
//     if (response.data['data'] == null) {
//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Gagal load'),
//               content: Text('Ruangan Tidak Ditemukan'),
//             );
//           });
//     } else {
//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Berhasil Dipinjam'),
//               content: Text('Ruangan Berhasil Dipinjam'),
//             );
//           });
//     }
//   } catch (e) {
//     print(e);
//   }
// }
