import 'dart:math';
import 'package:flutter/material.dart';

class RestRandom extends StatefulWidget {
  RestRandom({super.key});

  List<String> restaurants = <String>[
    'McDonald`s',
    'Roscoe`s Chicken & Waffels',
    'Olive Garden',
    'Panda Express',
    'Subway'
  ];

  int? currentIndex;

  @override
  State<RestRandom> createState() => _RestRandomState();
}

class _RestRandomState extends State<RestRandom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('What do you wont to eat'),
              const SizedBox(
                height: 8.0,
              ),
              widget.currentIndex != null
                  ? Text(
                      widget.restaurants[widget.currentIndex!],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.w600),
                    )
                  : const Text(''),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: updateIndex,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: Text(
                    'Pick Restaurant',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(widget.restaurants.length);
    setState(() {
      widget.currentIndex = index;
    });
  }
}
