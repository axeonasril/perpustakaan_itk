import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentPage = 0;

  List dataCarousel = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 5.0,
              initialPage: 3,
              height: 150.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              onPageChanged: (int index, _) {
                setState(() {
                  currentPage = index;
                });
              }),
          items: dataCarousel.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(children: [
                  Image.asset(
                    'assets/carousel.png',
                  ),
                  Positioned(
                      top: 40,
                      right: 100,
                      left: 10,
                      bottom: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SELAMAT DATANG',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'PERPUSTAKAAN ONLINE',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            'INSTITUT TEKNOLOGI KALIMANTAN',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                                color: Colors.white),
                          ),
                        ],
                      )),
                ]);
              },
            );
          }).toList(),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 20,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataCarousel.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  width: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        currentPage == index ? Color(0xff001AFF) : Colors.grey,
                  ),
                );
              }),
        )
      ],
    );
  }
}
