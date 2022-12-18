import 'package:flutter/material.dart';
import 'package:perpustakaan_itk/core/models/kategori.dart';
import 'package:perpustakaan_itk/core/controller/kategori.dart'
    as kategoriController;
import 'package:perpustakaan_itk/pages/detail_book_kategori.dart';

class EksplorEbook extends StatefulWidget {
  const EksplorEbook({Key key}) : super(key: key);

  @override
  State<EksplorEbook> createState() => _EksplorEbookState();
}

class _EksplorEbookState extends State<EksplorEbook> {
  List<Kategori> dataKategori = [];

  getDataKategori() async {
    dataKategori = await kategoriController.getKategori(context);
    // print(dataKategori);
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 1 / 1.2),
              itemCount: dataKategori.length < 9 ? dataKategori.length : 9,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            DetailBookKategoriPage(
                          namaKategori: dataKategori[index].namaKategori,
                        ),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/buku2.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10,
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
        ],
      )),
    );
  }
}
