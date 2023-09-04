import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final operatorButtonColor = Colors.grey;
  final numberButtonColor = Colors.blueGrey;
  final equalsButtonColor = Colors.deepOrange;
  final bgColor = Colors.black;

  String mainDisplay = '';
  String onTheFlyDisplay = '';
  String answerString = '';

  _calculateAnswer(String inputKey) {
    if (inputKey == 'C') {
      // Clear everything back to empty
      answerString = '';
      onTheFlyDisplay = '';
    } else if (inputKey == '%') {
      answerString += inputKey;
      onTheFlyDisplay = inputKey;
    } else if (inputKey == '<-') {
      answerString += inputKey;
      onTheFlyDisplay = inputKey;
    } else if (inputKey == '/') {
      answerString += inputKey;
      onTheFlyDisplay = inputKey;
    } else if (inputKey == 'x') {
      answerString += inputKey;
      onTheFlyDisplay = inputKey;
    } else if (inputKey == '-') {
      answerString += inputKey;
      onTheFlyDisplay = inputKey;
    } else if (inputKey == '+') {
      answerString += inputKey;
      onTheFlyDisplay = inputKey;
    } else if (inputKey == '=') {
      answerString += inputKey;
      onTheFlyDisplay = inputKey;
    } else {
      answerString += inputKey;
      onTheFlyDisplay = inputKey;
    }
    _updateDisplay(answerString, onTheFlyDisplay);
  }

  _updateDisplay(String newDisplay, String newRunningDisplay) {
    setState(() {
      mainDisplay = newDisplay;
      onTheFlyDisplay = newRunningDisplay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
// Main Display
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    mainDisplay,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
// Socondary Display to show running calculations
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    onTheFlyDisplay,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// Clear Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: operatorButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('C');
                  },
                  child: const Text('C', style: TextStyle(fontSize: 40)),
                ),
// Percentage Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: operatorButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('%');
                  },
                  child: const Text('%', style: TextStyle(fontSize: 40)),
                ),
// Backspace Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: operatorButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('<-');
                  },
                  child: const Text('<-', style: TextStyle(fontSize: 40)),
                ),
// Division Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: operatorButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('/');
                  },
                  child: const Text('/', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// Number 7 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('7');
                  },
                  child: const Text('7', style: TextStyle(fontSize: 40)),
                ),
// Number 8 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('8');
                  },
                  child: const Text('8', style: TextStyle(fontSize: 40)),
                ),
// Number 9 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('9');
                  },
                  child: const Text('9', style: TextStyle(fontSize: 40)),
                ),
// Multiplication Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: operatorButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('x');
                  },
                  child: const Text('X', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// Number 4 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('4');
                  },
                  child: const Text('4', style: TextStyle(fontSize: 40)),
                ),
// Number 5 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('5');
                  },
                  child: const Text('5', style: TextStyle(fontSize: 40)),
                ),
// Number 6 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('6');
                  },
                  child: const Text('6', style: TextStyle(fontSize: 40)),
                ),
// Subtraction Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: operatorButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('-');
                  },
                  child: const Text('-', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// Number 1 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('1');
                  },
                  child: const Text('1', style: TextStyle(fontSize: 40)),
                ),
// Number 2 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('2');
                  },
                  child: const Text('2', style: TextStyle(fontSize: 40)),
                ),
// Number 3 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('3');
                  },
                  child: const Text('3', style: TextStyle(fontSize: 40)),
                ),
// Addition Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: operatorButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('+');
                  },
                  child: const Text('+', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// Number 00 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('00');
                  },
                  child: const Text('00', style: TextStyle(fontSize: 40)),
                ),
// Number 0 Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('0');
                  },
                  child: const Text('0', style: TextStyle(fontSize: 40)),
                ),
// Decimal Point Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: numberButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('.');
                  },
                  child: const Text('.', style: TextStyle(fontSize: 40)),
                ),
// Equals Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: const Size(80, 80),
                    backgroundColor: equalsButtonColor,
                  ),
                  onPressed: () {
                    _calculateAnswer('=');
                  },
                  child: const Text('=', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
