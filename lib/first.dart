import 'dart:io';

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              Platform.isAndroid ? 'Hello All' : 'Hello Avinash Welcome iOS',
              style: TextStyle(fontSize: Platform.isAndroid ? 30 : 20),
            ),
          ),
        ],
      ),
    );
  }
}
