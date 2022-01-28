import 'package:flutter/material.dart';
import 'package:hostel/page_one.dart';
import 'package:hostel/page_three.dart';
import 'package:hostel/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageThree(),
    );
  }
}

