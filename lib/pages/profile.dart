// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan_itk/core/controller/auth.dart';
import 'package:perpustakaan_itk/core/models/user.dart';
import 'package:perpustakaan_itk/pages/login.dart';
import 'package:perpustakaan_itk/pages/tab_decider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User user;

  void getDataUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String tempUser = prefs.getString('user');
    var data = json.decode(tempUser);
    setState(() {
      user = User.fromJson(data);
    });
  }

  @override
  void initState() {
    getDataUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            CurrentPage.goHome();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TabDecider()));
          },
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff6759FF),
        title: Text(
          'PROFIL SAYA',
          style: GoogleFonts.openSans(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Color(0xff6759ff),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(5)),
                ),
              ),
            ],
          ),
          Positioned(
            top: 60,
            right: 0,
            left: 0,
            bottom: 0,
            child: ListView(physics: BouncingScrollPhysics(), children: [
              Column(
                children: [
                  SizedBox(
                    height: 110,
                    width: 110,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://kubalubra.is/wp-content/uploads/2017/11/default-thumbnail.jpg')),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                user == null ? '' : user.name.toString(),
                style: GoogleFonts.openSans(
                  color: Color(0xff222149),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.label_important_rounded,
                      size: 30,
                      color: Color(0xff1C4CFF),
                    ),
                    title: const Text(
                      'Program Studi',
                      style: TextStyle(
                        color: Color(
                          0xff696969,
                        ),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      user == null ? '' : user.prodi.toString(),
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Material(
                  elevation: 0,
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.layers_rounded,
                      size: 30,
                      color: Color(0xff1C4CFF),
                    ),
                    title: const Text(
                      'Jurusan',
                      style: TextStyle(
                        color: Color(
                          0xff696969,
                        ),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      user == null ? '' : user.jurusan.toString(),
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.mail_outline_rounded,
                      size: 30,
                      color: Color(0xff1C4CFF),
                    ),
                    title: const Text(
                      'Email',
                      style: TextStyle(
                        color: Color(
                          0xff696969,
                        ),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    isThreeLine: true,
                    subtitle: Text(
                      user == null ? '' : user.email.toString(),
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              GestureDetector(
                onTap: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: const Text('Keluar'),
                            content:
                                const Text('Apakah anda yakin untuk keluar?'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Tidak'),
                              ),
                              TextButton(
                                onPressed: () {
                                  CurrentPage.goHome();
                                  logout(context);
                                },
                                child: const Text('Ya'),
                              ),
                            ],
                          ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff6759ff),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Keluar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
