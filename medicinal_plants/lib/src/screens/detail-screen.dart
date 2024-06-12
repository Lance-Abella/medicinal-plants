// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_plants/src/constants/colors.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 222, 207, 207),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40.0),
              )
            ),
            child: Image(
              image: AssetImage('assets/images/Sample plants.png'),
                width: width,
                height: height*0.4,
                fit: BoxFit.contain,
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/navbar');
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.04, top: height*0.04),
              child: Image(
                image: AssetImage('assets/icons/Back.png'),
                  width: width*0.06,
                  height: height*0.06,
                  fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height*0.40),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Monstera",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: width*0.055,
              )
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height*0.43),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Cough",
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: width*0.050,
              )
            ),
          ),

          Container(
            width: width*.60,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(15.0)
              )
            ),
            margin: EdgeInsets.only(top: height*0.53),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Scientific Name",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: width*0.050,
              )
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height*0.60),
            width: width*.99,
            padding: EdgeInsets.all(10.0),
            child: Divider( 
              color: Colors.black, 
              thickness: 1.0,
              height: height*.02, 
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height*0.63),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "About",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: width*0.045,
              )
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height*0.67),
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Text(
                "Monstera deliciosa, the Swiss cheese plant or split-leaf philodendron is a species of flowering plant native to tropical forests of southern Mexico, south to Panama. It has been introduced to many tropical areas, and has become a mildly invasive species in Hawaii, Seychelles, Ascension Island and the Society Islands.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: width*0.038,
                ),
                maxLines: 10,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width*0.04, top: height*0.90),
            child: Image(
              image: AssetImage('assets/icons/Collection-2.png'),
                width: width*0.17,
                height: height*0.17,
                fit: BoxFit.contain,
            ),
          ),

          Container(
            width: width*.71,
            height: height*.0678,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.only(top: height*0.916, left: width*0.25),
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "ADD TO FAVORITE",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: width*0.050,
                )
              ),
            ),
          ),



        ],
      ),
    );
  }
}