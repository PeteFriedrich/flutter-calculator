import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonLabel;
  final Color buttonColor;
  final VoidCallback onPressed;
  const CalculatorButton({
    super.key,
    required this.buttonLabel,
    required this.buttonColor,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        fixedSize: const Size(80, 80),
        backgroundColor: buttonColor,
      ),
      onPressed: () {
        // Carry out function for calculation
      },
      child: Text(
        buttonLabel,
        style: const TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
