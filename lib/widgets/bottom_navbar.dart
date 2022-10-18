import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [Icon(FeatherIcons.home), Text('Beranda')],
          ),
        ],
      ),
    );
    // return ConvexAppBar(
    //   backgroundColor: Colors.white,
    //   activeColor: Color.fromARGB(255, 80, 97, 251),
    //   color: Color(0xffB4B4B4),
    //   curveSize: Checkbox.width,
    //   items: [
    //     TabItem(icon: Icon(FeatherIcons.home), title: 'Beranda'),
    //     TabItem(icon: Icon(FeatherIcons.compass), title: 'Eksplor'),
    //     TabItem(icon: Icon(FeatherIcons.plusSquare), title: 'Unggah'),
    //     TabItem(icon: Icon(FeatherIcons.book), title: 'Buku Saya'),
    //     TabItem(
    //       icon: Icon(FeatherIcons.user),
    //       title: 'Profile',
    //     ),
    //   ],
    //   initialActiveIndex: 0,
    //   onTap: (int i) => print('click index=$i'),
    // );
  }
}
