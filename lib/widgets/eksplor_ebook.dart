import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/kategori.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';
import 'package:perpustakaan_itk/core/controller/kategori.dart'
    as kategoriController;

class EksplorEbook extends StatefulWidget {
  const EksplorEbook({Key key}) : super(key: key);

  @override
  State<EksplorEbook> createState() => _EksplorEbookState();
}

class _EksplorEbookState extends State<EksplorEbook> {
  // var dataBuku = [
  //   {
  //     'image': 'assets/buku1.png',
  //     'judul': 'Teknologi',
  //     'jumlah': '10',
  //     'oleh': 'Andi Wahyu',
  //     'jurusan': 'Matematika dan Teknologi Informasi',
  //   },
  //   {
  //     'image': 'assets/buku13.png',
  //     'judul': 'Sosial',
  //     'jumlah': '10',
  //     'oleh': 'Andi Sulthan',
  //     'jurusan': 'Teknologi Industri dan Proses',
  //   },
  //   {
  //     'image': 'assets/buku6.png',
  //     'judul': 'Agama',
  //     'jumlah': '10',
  //     'oleh': 'Asril',
  //     'jurusan': 'Sains, Teknologi Pangan, dan Kemaritiman',
  //   },
  //   {
  //     'image': 'assets/buku7.png',
  //     'judul': 'Umum',
  //     'jumlah': '10',
  //     'oleh': 'Wandi',
  //     'jurusan': 'Teknik Sipil dan Perencanaan',
  //   },
  //   {
  //     'image': 'assets/buku8.png',
  //     'judul': 'Geografi',
  //     'jumlah': '10',
  //     'oleh': 'Ezra',
  //     'jurusan': 'Ilmu Kebumian dan Lingkungan',
  //   },
  //   {
  //     'image': 'assets/buku9.png',
  //     'judul': 'Seni Rekreasi',
  //     'jumlah': '10',
  //     'oleh': 'Rafly',
  //     'jurusan': 'Matematika dan Teknologi Informasi',
  //   },
  //   {
  //     'image': 'assets/buku10.png',
  //     'judul': 'Sastra',
  //     'jumlah': '10',
  //     'oleh': 'Wahyu',
  //     'jurusan': 'Matematika dan Teknologi Informasi',
  //   },
  //   {
  //     'image': 'assets/buku11.png',
  //     'judul': 'Pengetahuan',
  //     'jumlah': '10',
  //     'oleh': 'Andi',
  //     'jurusan': 'Matematika dan Teknologi Informasi',
  //   },
  //   {
  //     'image': 'assets/buku12.png',
  //     'judul': 'Bahasa',
  //     'jumlah': '10',
  //     'oleh': 'Daffa',
  //     'jurusan': 'Matematika dan Teknologi Informasi',
  //   },
  // ];

  List<Kategori> dataKategori = [];

  getDataKategori() async {
    dataKategori = await kategoriController.getKategori(context);
    setState(() {});
  }

  @override
  void initState() {
    getDataKategori();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              getDataKategori();
            },
            child: Text(
              'E-BOOK',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 1 / 1.2),
                itemCount: dataKategori.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => DetailBuku(
                                    detailBuku: dataKategori[index],
                                  )));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          dataKategori[index].berkas ??
                              'https://kubalubra.is/wp-content/uploads/2017/11/default-thumbnail.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          dataKategori[index].namaKategori,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        // Text(
                        //   dataKategori[index]['jumlah'] + ' Buku',
                        //   style: TextStyle(
                        //       fontWeight: FontWeight.normal,
                        //       fontSize: 12,
                        //       color: Color(0xff696969)),
                        // ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
