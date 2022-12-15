import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:perpustakaan_itk/pages/home.dart';
import 'package:perpustakaan_itk/pages/buku_saya.dart';
import 'package:perpustakaan_itk/pages/explore.dart';
import 'package:perpustakaan_itk/pages/profile.dart';
import 'package:perpustakaan_itk/pages/scan.dart';

class CurrentPage {
  static int currentPage = 0;

  static goHome() {
    currentPage = 0;
  }
}

class TabDecider extends StatefulWidget {
  const TabDecider({Key key}) : super(key: key);

  @override
  State<TabDecider> createState() => _TabDeciderState();
}

class _TabDeciderState extends State<TabDecider> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: CurrentPage.currentPage,
                children: [
                  Home(),
                  Explore(),
                  Home(),
                  BukuSaya(),
                  Profile(),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: Offset(0, 0),
                    blurRadius: 4)
              ]),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        CurrentPage.currentPage = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          FeatherIcons.home,
                          color: CurrentPage.currentPage == 0
                              ? Color(0xff001AFF)
                              : Color(0xffB4B4B4),
                        ),
                        Text(
                          'Beranda',
                          style: TextStyle(
                              color: CurrentPage.currentPage == 0
                                  ? Color(0xff001AFF)
                                  : Color(0xffB4B4B4)),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        CurrentPage.currentPage = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          FeatherIcons.compass,
                          color: CurrentPage.currentPage == 1
                              ? Color(0xff001AFF)
                              : Color(0xffB4B4B4),
                        ),
                        Text(
                          'Eksplor',
                          style: TextStyle(
                            color: CurrentPage.currentPage == 1
                                ? Color(0xff001AFF)
                                : Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Scan()));
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.qr_code_scanner_outlined,
                          size: 35,
                          color: CurrentPage.currentPage == 2
                              ? Color(0xff001AFF)
                              : Color(0xffB4B4B4),
                        ),
                        Text('Scan',
                            style: TextStyle(
                                color: CurrentPage.currentPage == 2
                                    ? Color(0xff001AFF)
                                    : Color(0xffB4B4B4))),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        CurrentPage.currentPage = 3;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          FeatherIcons.book,
                          color: CurrentPage.currentPage == 3
                              ? Color(0xff001AFF)
                              : Color(0xffB4B4B4),
                        ),
                        Text('Buku Saya',
                            style: TextStyle(
                                color: CurrentPage.currentPage == 3
                                    ? Color(0xff001AFF)
                                    : Color(0xffB4B4B4))),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        CurrentPage.currentPage = 4;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(FeatherIcons.user,
                            color: CurrentPage.currentPage == 4
                                ? Color(0xff001AFF)
                                : Color(0xffB4B4B4)),
                        Text('Profil',
                            style: TextStyle(
                                color: CurrentPage.currentPage == 4
                                    ? Color(0xff001AFF)
                                    : Color(0xffB4B4B4))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
