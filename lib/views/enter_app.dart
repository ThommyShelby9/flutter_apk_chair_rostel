import 'dart:async';
import 'package:compoflutter/views/first_page.dart';
import 'package:flutter/material.dart';

class EnterApp extends StatefulWidget {
  const EnterApp({super.key});

  @override
  State<EnterApp> createState() => _EnterAppState();
}

class _EnterAppState extends State<EnterApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => FirstPage()),
        (route) => false,
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Your", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text("Room", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text("Like...", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ]),
        ),
      ),
      );
  }
}
