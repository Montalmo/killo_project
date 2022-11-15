import 'package:flutter/material.dart';

class Day03 extends StatefulWidget {
  const Day03({super.key});

  @override
  State<Day03> createState() => _Day03State();
}

class _Day03State extends State<Day03> {
  double _fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.done,
                  maxLines: null,
                  style: TextStyle(
                    fontSize: _fontSize,
                  ),
                ),
              ),
              Slider(
                value: _fontSize,
                onChanged: _changeSize,
                min: 24,
                max: 160,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _changeSize(newSize) {
    setState(() {
      _fontSize = newSize;
    });
  }
}
