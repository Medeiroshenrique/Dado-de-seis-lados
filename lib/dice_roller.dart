import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var imagemDinamicaDado = 'images/dice_images/dice-6.png';

  void rolarDado() {
    var numeroSorteado = Random().nextInt(6) + 1;
    setState(() {
      imagemDinamicaDado = 'images/dice_images/dice-$numeroSorteado.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagemDinamicaDado,
          width: 200,
        ),
        TextButton(
          onPressed: rolarDado,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 160,
            ),
            foregroundColor: Colors.yellow,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Rolar o dado"),
        )
      ],
    );
  }
}
