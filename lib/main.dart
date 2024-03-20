import 'package:flutter/material.dart';
//import 'package:solid_lints/analysis_options.yaml';
//import 'package:solid_lints/analysis_options_test.yaml';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _color = const Color.fromARGB(16, 77, 72, 16);

  void generateColor() {
    setState(() {
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
    });
  }

  @override
  void initState() {
    generateColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => generateColor(),
      child: Container(
        alignment: Alignment.center,
        color: _color,
        child: const Text(
          "Hello there",
          style: TextStyle(fontSize: 40, color: Colors.black),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
