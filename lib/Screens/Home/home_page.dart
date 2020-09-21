import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: _body(),
    );
  }

  Widget _body() {
    return InkWell(
      onTap: changeColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changeColor() {
    setState(
      () => _color = Color(
        Random().nextInt(0xffffffff),
      ),
    );
  }
}
