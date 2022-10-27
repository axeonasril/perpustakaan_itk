// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        leading: BackButton(
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
                            backgroundImage: AssetImage('assets/buku1.png')),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: FlatButton(
                              padding: EdgeInsets.all(7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(color: Colors.white10)),
                              color: Color(0xffF5F6F9),
                              onPressed: () {},
                              child: Image.asset('assets/camera.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Abdullah M H',
                style: GoogleFonts.openSans(
                  color: Color(0xff222149),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
