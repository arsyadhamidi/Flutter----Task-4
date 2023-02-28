import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task4/firstpage/login_page.dart';
import 'package:task4/firstpage/main_page.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {

  void dataScreen() async{
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
    });
  }

  @override
  void initState() {
    dataScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              scale: 3,
            ),
          ],
        ),
      ),
    );
  }
}
