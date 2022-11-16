import 'package:flutter/material.dart';

class Day05 extends StatefulWidget {
  const Day05({super.key});

  @override
  State<Day05> createState() => _Day05State();
}

class _Day05State extends State<Day05> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kilo Locos`s Website'),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black26),
          child: ButtonBar(),
        ),
      ),
    );
  }
}
