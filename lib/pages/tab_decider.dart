import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:perpustakaan_itk/pages/Home.dart';
import 'package:perpustakaan_itk/pages/buku_saya.dart';
import 'package:perpustakaan_itk/pages/explore.dart';
import 'package:perpustakaan_itk/pages/profile.dart';
import 'package:perpustakaan_itk/pages/unggah.dart';

class TabDecider extends StatefulWidget {
  const TabDecider({Key key}) : super(key: key);

  @override
  State<TabDecider> createState() => _TabDeciderState();
}

class _TabDeciderState extends State<TabDecider> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: currentPage,
              children: [
                Home(),
                Explore(),
                Unggah(),
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
                      currentPage = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        FeatherIcons.home,
                        color: currentPage == 0
                            ? Color(0xff001AFF)
                            : Color(0xffB4B4B4),
                      ),
                      Text(
                        'Beranda',
                        style: TextStyle(
                            color: currentPage == 0
                                ? Color(0xff001AFF)
                                : Color(0xffB4B4B4)),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPage = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        FeatherIcons.compass,
                        color: currentPage == 1
                            ? Color(0xff001AFF)
                            : Color(0xffB4B4B4),
                      ),
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: currentPage == 1
                              ? Color(0xff001AFF)
                              : Color(0xffB4B4B4),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPage = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        FeatherIcons.plusSquare,
                        color: currentPage == 2
                            ? Color(0xff001AFF)
                            : Color(0xffB4B4B4),
                      ),
                      Text('Unggah',
                          style: TextStyle(
                              color: currentPage == 2
                                  ? Color(0xff001AFF)
                                  : Color(0xffB4B4B4))),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPage = 3;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        FeatherIcons.book,
                        color: currentPage == 3
                            ? Color(0xff001AFF)
                            : Color(0xffB4B4B4),
                      ),
                      Text('Buku Saya',
                          style: TextStyle(
                              color: currentPage == 3
                                  ? Color(0xff001AFF)
                                  : Color(0xffB4B4B4))),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPage = 4;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(FeatherIcons.user,
                          color: currentPage == 4
                              ? Color(0xff001AFF)
                              : Color(0xffB4B4B4)),
                      Text('Profile',
                          style: TextStyle(
                              color: currentPage == 4
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
    );
  }
}
