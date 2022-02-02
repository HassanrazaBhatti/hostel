import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hostel/page_one.dart';


class SplashPanga extends StatefulWidget {
  @override
  _SplashPangaState createState() => new _SplashPangaState();
}

class _SplashPangaState extends State<SplashPanga> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 50), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return PageOne();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/logo.png"))),
        ),
      ),
    );
  }
}
