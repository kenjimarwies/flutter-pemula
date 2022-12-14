import 'package:flutter/material.dart';
import 'package:flutter_submission/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinema',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "Montserrat",
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
