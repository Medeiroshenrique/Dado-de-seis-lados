import 'package:flutter/material.dart';

class TextStyled extends StatelessWidget {
  const TextStyled(this.textToPersonalise, {super.key});

  final String textToPersonalise;
  @override
  Widget build(context) {
    return Text(textToPersonalise,
        style: const TextStyle(
          color: Colors.yellowAccent,
          fontSize: 50,
        ));
  }
}
