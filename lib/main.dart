import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade400,
        appBar: AppBar(
          toolbarHeight: 79,
          title: Text(
            "DICEE",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade300,
        ),
        body: dicepage(),
      ),
    );
  }
}

class dicepage extends StatefulWidget {
  dicepage({Key? key}) : super(key: key);

  @override
  State<dicepage> createState() => _dicepageState();
}

int leftdice = 1;
int rightdice = 1;

void chenge() {
  leftdice = Random().nextInt(6) + 1;
  rightdice = Random().nextInt(6) + 1;
}

class _dicepageState extends State<dicepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  chenge();
                });
              },
              child: Image.asset("assets/images/dice$leftdice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  chenge();
                });
              },
              child: Image.asset("assets/images/dice$rightdice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
