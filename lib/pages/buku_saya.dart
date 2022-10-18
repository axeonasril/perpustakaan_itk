import 'package:flutter/material.dart';

class BukuSaya extends StatefulWidget {
  const BukuSaya({Key key}) : super(key: key);

  @override
  State<BukuSaya> createState() => _BukuSayaState();
}

class _BukuSayaState extends State<BukuSaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buku Saya')),
    );
  }
}
