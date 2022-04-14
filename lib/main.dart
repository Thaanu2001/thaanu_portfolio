import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/sections/home.dart';

void main() {
  runApp(const ThaanuPortfolio());
}

class ThaanuPortfolio extends StatelessWidget {
  const ThaanuPortfolio({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const Home(),
    );
  }
}
