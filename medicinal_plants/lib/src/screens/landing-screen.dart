// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_plants/src/constants/colors.dart';

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

          Center(
            child: Text(
              'Medicinal Plants',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 40,
              )
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: height*.3),
              height: height*.10,
              width: width*.70,
              child: Center(
                child: Text(
                  'Find medicinal plants using our app',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),

          Center(
            child: GestureDetector(
              onTap: () {
              Navigator.pushNamed(context, '/navbar');
            },
              child: Container(
                margin: EdgeInsets.only(top: height*.8),
                height: height*.07,
                width: width*.70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: buttonColor,
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    )
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}