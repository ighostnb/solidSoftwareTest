import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random _random = Random();

  Color _color = Colors.white;
  Color _textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: _body(),
    );
  }

  Widget _body() {
    return GestureDetector(
      onTap: _changeColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                fontSize: 50,
                color: _textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _generate() {
    int maxValue = 256;
    int a = _random.nextInt(maxValue);
    int r = _random.nextInt(maxValue);
    int g = _random.nextInt(maxValue);
    int b = _random.nextInt(maxValue);

    return Color.fromARGB(a, r, g, b);
  }

  void _changeColor() {
    setState(() {
      _color = _generate();
    });
  }
}
