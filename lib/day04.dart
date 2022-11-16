import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:killo_project/flascard.dart';
import 'package:killo_project/flashcard_view.dart';

class Day04 extends StatefulWidget {
  Day04({super.key});

  @override
  State<Day04> createState() => _Day04State();
}

class _Day04State extends State<Day04> {
  List<Flashcard> _flashcards = [
    Flashcard(
      quastion: 'Як дізнатись про версію пристрою TP-Link?',
      answer:
          'Поверніть пристрій і ви побачите етикетку з кількома символами «Ver: X.Y» (наприклад, Ver: 1.0) в полі Serial Number (Серійный номер). Число X – версія пристрою. Якщо напис виглядає так: «Ver: 1.1», то версія пристрою – V 1.',
    ),
    Flashcard(quastion: 'Question 2', answer: 'Answer 2'),
    Flashcard(quastion: 'Question 3', answer: 'Answer 3'),
  ];

  // @override
  // void initState() {
  //   int _curentIndex = 1;
  //   super.initState();
  // }

  int _curentIndex = 0;

  void showNextCard() {
    setState(() {
      _curentIndex = _curentIndex == (_flashcards.length - 1)
          ? _curentIndex
          : _curentIndex + 1;
    });
  }

  void showPreviousCard() {
    setState(() {
      _curentIndex = _curentIndex > 0
          ? _curentIndex - 1
          : _curentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  // direction: FlipDirection.VERTICAL,
                  front: FlashCardView(
                    cardTitle: _flashcards[_curentIndex].quastion,
                  ),
                  back: FlashCardView(
                    cardTitle: _flashcards[_curentIndex].answer,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 120.0,
                    child: ElevatedButton(
                      onPressed: showPreviousCard,
                      child: Text('Previous'),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    child: ElevatedButton(
                      onPressed: showNextCard,
                      child: Text('Next'),
                    ),
                  ),
                  // MyButton(
                  //   title: 'Previous',
                  //   icon: Icons.arrow_back_ios,
                  //   acttion: showNextCard,
                  // ),
                  // MyButton(
                  //   title: 'Next',
                  //   icon: Icons.arrow_forward_ios,
                  //   acttion: () {},
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
