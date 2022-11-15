import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Day04 extends StatefulWidget {
  const Day04({super.key});

  @override
  State<Day04> createState() => _Day04State();
}

class _Day04State extends State<Day04> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  front: Card(
                    elevation: 4,
                    child: Center(
                      child: const Text('Sexy flashcard'),
                    ),
                  ),
                  back: Card(
                    elevation: 4,
                    child: Center(
                        child: const Text('Welcome to the back side, Luke')),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyButton(
                    title: 'Prewiev',
                    icon: Icons.arrow_back_ios,
                  ),
                  MyButton(
                    title: 'Next',
                    icon: Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 40,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 24, height: 24, child: Icon(icon)),
            const SizedBox(
              width: 8.0,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
