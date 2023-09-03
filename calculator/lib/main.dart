import 'package:flutter/material.dart';
import './button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final operatorButtonColor = Colors.grey;
  final numberButtonColor = Colors.blueGrey;
  final equalsButtonColor = Colors.deepOrange;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                    '2+2',
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    '4',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  buttonLabel: 'C',
                  buttonColor: operatorButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '%',
                  buttonColor: operatorButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '<-',
                  buttonColor: operatorButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '/',
                  buttonColor: operatorButtonColor,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  buttonLabel: '7',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '8',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '9',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: 'X',
                  buttonColor: operatorButtonColor,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  buttonLabel: '4',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '5',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '6',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '-',
                  buttonColor: operatorButtonColor,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  buttonLabel: '1',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '2',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '3',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '+',
                  buttonColor: operatorButtonColor,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  buttonLabel: '00',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '0',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '.',
                  buttonColor: numberButtonColor,
                  onPressed: () {},
                ),
                CalculatorButton(
                  buttonLabel: '=',
                  buttonColor: equalsButtonColor,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
