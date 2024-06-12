// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_plants/src/buttons/custom-button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/navbar');
            },
            child: Container(
              margin: EdgeInsets.only(left: width * 0.04, top: height * 0.042),
              child: Image(
                image: AssetImage('assets/icons/Back.png'),
                width: width * 0.06,
                height: height * 0.06,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.37, top: height * 0.041),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Profile",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: width * 0.055,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height * 0.1),
            child: Column(
              children: [
                CustomButton(
                  onPressed: () {
                    // Add your Personal Information button logic here
                  },
                  label: 'Personal Information',
                  width: width,
                ),

                CustomButton(
                  onPressed: () {
                    // Add your Privacy button logic here
                  },
                  label: 'Privacy',
                  width: width,
                ),

                CustomButton(
                  onPressed: () {
                    // Add your Settings button logic here
                  },
                  label: 'Settings',
                  width: width,
                ),

                CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/landing');
                  },
                  label: 'Logout',
                  width: width,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}