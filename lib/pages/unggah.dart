import 'package:flutter/material.dart';

class Unggah extends StatefulWidget {
  const Unggah({Key key}) : super(key: key);

  @override
  State<Unggah> createState() => _UnggahState();
}

class _UnggahState extends State<Unggah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Unggah')),
    );
  }
}
