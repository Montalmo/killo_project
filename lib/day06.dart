import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Day06 extends StatefulWidget {
  const Day06({super.key});

  @override
  State<Day06> createState() => _Day06State();
}

class _Day06State extends State<Day06> {
  final List<String> _imagePath = [
    'assets/images/pic01.jpg',
    'assets/images/pic02.jpg',
    'assets/images/pic03.jpg',
    'assets/images/pic04.jpg',
    'assets/images/pic05.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: CarouselSlider(
              items: _imagePath
                  .map(
                    (e) => Builder(
                      builder: (context) => Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(4.0),
                        child: Image.asset(e),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
