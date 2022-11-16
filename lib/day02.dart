import 'package:flutter/material.dart';

class Day02 extends StatefulWidget {
  const Day02({super.key});

  @override
  State<Day02> createState() => _Day02State();
}

class _Day02State extends State<Day02> {
  final controller = TextEditingController();

  List<bool> _selection = <bool>[true, false, false];
  String? tip;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (tip != null)
                Text(
                  '$tip',
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 40.0),
                ),
              const Text('Total Amount'),
              SizedBox(
                width: 72.0,
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(hintText: '\$100.00'),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ToggleButtons(
                children: <Text>[
                  const Text('10%'),
                  const Text('15%'),
                  const Text('20%'),
                ],
                isSelected: _selection,
                onPressed: updateSelection,
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: calculateTip,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
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

  void calculateTip() {
    final totalAmount = double.parse(controller.text);
    final selctedIndex = _selection.indexWhere((element) => element);
    final tipPercentstage = [0.1, 0.15, 0.2][selctedIndex];

    final tipTotal = (tipPercentstage * totalAmount).toStringAsFixed(2);

    setState(() {
      tip = '\$$tipTotal';
    });
  }
}
