import 'package:flutter/material.dart';

import './src/app.dart';



void main() => runApp(Tindev());

class Tindev extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFf5f5f5),
      ),
      title: "Tindev",
      home: App(),
    );
  }
}