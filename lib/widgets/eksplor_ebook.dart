import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/pages/detail_buku.dart';

class EksplorEbook extends StatefulWidget {
  const EksplorEbook({Key key}) : super(key: key);

  @override
  State<EksplorEbook> createState() => _EksplorEbookState();
}

class _EksplorEbookState extends State<EksplorEbook> {
  var dataBuku = [
    {
      'image': 'assets/buku1.png',
      'judul': 'Teknologi',
      'jumlah': '10',
      'oleh': 'Andi Wahyu',
      'jurusan': 'Matematika dan Teknologi Informasi',
    },
    {
      'image': 'assets/buku2.png',
      'judul': 'Sosial',
      'jumlah': '10',
      'oleh': 'Andi Sulthan',
      'jurusan': 'Teknologi Industri dan Proses',
    },
    {
      'image': 'assets/buku3.png',
      'judul': 'Agama',
      'jumlah': '10',
      'oleh': 'Asril',
      'jurusan': 'Sains, Teknologi Pangan, dan Kemaritiman',
    },
    {
      'image': 'assets/buku4.png',
      'judul': 'Agama',
      'jumlah': '10',
      'oleh': 'Wandi',
      'jurusan': 'Teknik Sipil dan Perencanaan',
    },
    {
      'image': 'assets/buku5.png',
      'judul': 'Agama',
      'jumlah': '10',
      'oleh': 'Ezra',
      'jurusan': 'Ilmu Kebumian dan Lingkungan',
    },
    {
      'image': 'assets/buku3.png',
      'judul': 'Agama',
      'jumlah': '10',
      'oleh': 'Rafly',
      'jurusan': 'Matematika dan Teknologi Informasi',
    },
    {
      'image': 'assets/buku3.png',
      'judul': 'Agama',
      'jumlah': '10',
      'oleh': 'Wahyu',
      'jurusan': 'Matematika dan Teknologi Informasi',
    },
    {
      'image': 'assets/buku3.png',
      'judul': 'Agama',
      'jumlah': '10',
      'oleh': 'Andi',
      'jurusan': 'Matematika dan Teknologi Informasi',
    },
    {
      'image': 'assets/buku3.png',
      'judul': 'Agama',
      'jumlah': '10',
      'oleh': 'Daffa',
      'jurusan': 'Matematika dan Teknologi Informasi',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'E-BOOK',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 1 / 1.2),
                itemCount: dataBuku.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => DetailBuku(
                                    detailBuku: dataBuku[index],
                                  )));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          dataBuku[index]['image'],
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          dataBuku[index]['judul'],
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text(
                          dataBuku[index]['jumlah'] + ' Buku',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Color(0xff696969)),
                        ),
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
