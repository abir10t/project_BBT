import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BuildApp(),
    );
  }
}

class BuildApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
          child: Stack(
        children: [

          Positioned(
            child: Container(
              width: double.infinity,
              height:200,
              decoration: BoxDecoration(
                color:Colors.white,

              ),
            ),
          ),
        ],
      )),
    );
  }
}
