// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: width,
            height: height,
            child: Image.asset(
              'assets/images/Landing image.png',
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: width,
            height: height,
            child: Image.asset(
              'assets/images/Transparent design.png',
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: width,
            height: height,
            child: Text(
              'Medicinal Plants',
              style: TextStyle(
                
              ),
            )
          ),
        ],
      ),
    );
  }
}