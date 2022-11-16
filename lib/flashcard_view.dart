import 'package:flutter/material.dart';

class FlashCardView extends StatelessWidget {
  FlashCardView({super.key, required this.cardTitle});

  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            cardTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
