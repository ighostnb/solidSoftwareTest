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
      onTap: change,
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

  void change() {
    int _argb = 256;
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(_argb),
        _random.nextInt(_argb),
        _random.nextInt(_argb),
        _random.nextInt(_argb),
      );
    });
  }

  // void changeColor() {
  //   setState(() {
  //     _color = Color(_random.nextInt(0xffffffff));
  //   });
  // }
}
