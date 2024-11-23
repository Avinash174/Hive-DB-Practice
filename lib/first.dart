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
              Platform.isAndroid
                  ? 'Hello Avinash Welcome In Android'
                  : 'Hello Avinash Welcome iOS',
              textAlign: Platform.isIOS ? TextAlign.center : TextAlign.left,
              style: TextStyle(
                fontSize: Platform.isAndroid ? 20 : 30,
              ),
            ),
          ),
          Text(
            Platform.isAndroid ? 'by' : 'HELLo',
            style: TextStyle(
              fontSize: Platform.isAndroid ? 10 : 20,
              fontWeight: Platform.isIOS ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
