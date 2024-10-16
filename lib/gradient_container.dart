import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/text_container.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColorOfChoice, this.secondColorOfChoice,
      {super.key});

  const GradientContainer.orange({super.key})
      : firstColorOfChoice = Colors.deepOrange,
        secondColorOfChoice = Colors.orange;

  const GradientContainer.blue({super.key})
      : firstColorOfChoice = Colors.lightBlue,
        secondColorOfChoice = Colors.deepPurple;

  final Color firstColorOfChoice;
  final Color secondColorOfChoice;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColorOfChoice,
            secondColorOfChoice,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
