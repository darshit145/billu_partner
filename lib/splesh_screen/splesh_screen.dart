import 'dart:async';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/start_page_screen.dart';
class FirstSpleshScreen extends StatefulWidget {
  const FirstSpleshScreen({super.key});

  @override
  State<FirstSpleshScreen> createState() => _FirstSpleshScreenState();
}

class _FirstSpleshScreenState extends State<FirstSpleshScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return StartPageScreen();
      },));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.red,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/first_splash_screen.jpg",),
            fit: BoxFit.fill

          )
        ),
      ),

    );
  }
}
