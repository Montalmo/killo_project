import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Day02 extends StatefulWidget {
  const Day02({super.key});

  @override
  State<Day02> createState() => _Day02State();
}

class _Day02State extends State<Day02> {
  final controller = TextEditingController();

  List<bool> _selection = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Total Amount'),
              SizedBox(
                width: 72.0,
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: '\$100.00'),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ToggleButtons(
                children: [
                  Text('10%'),
                  Text('15%'),
                  Text('20%'),
                ],
                isSelected: _selection,
                onPressed: updateSelection,
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style:  
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text('Calculate tip'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateSelection(int selectIndex) {
    setState(
      () {
        for (int i = 0; i < _selection.length; i++) {
          _selection[i] = selectIndex == i;
        }
      },
    );
  }
}
