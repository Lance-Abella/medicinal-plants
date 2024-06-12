// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_plants/src/constants/colors.dart';
import 'package:medicinal_plants/src/navbar/category-navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height*0.032,
        leading: Container(
          child: Image.asset(
              'assets/icons/Menu.png',
              width: width * 0.01,
              height: height * 0.01,
              fit: BoxFit.contain,
            ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: height*0.04),
            padding: EdgeInsets.all(10.0),
            child: Text(
                "Let's Find",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.068,
                )
              ),
          ),
          
          Container(
            margin: EdgeInsets.only(top: height*0.09),
            padding: EdgeInsets.all(10.0),
            child: Text(
                "Medicinal Plants!",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.068,
                )
              ),
          ),

          //Search Bar
          Container(
            margin: EdgeInsets.only(top: height*0.16),
            padding: EdgeInsets.all(10.0),
            width: width*0.80,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: searchBar,
                contentPadding: EdgeInsets.all(15),
                hintText: "Search plants..",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                  
              prefixIcon: Padding(
                padding: const EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('assets/icons/Search.png'),
                  width: width*0.03,
                  height: height*0.03,
                  fit: BoxFit.contain,
                ),
              ),
                  
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/add');
            },
            child: Container(
              margin: EdgeInsets.only(top: height*0.128, left: width*0.80),
              child: Image.asset(
                'assets/icons/Add.png',
                width: width * 0.16,
                height: height * 0.16,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height * 0.25), 
            child: CategoryNavBar(),
          ),
        ],
      ),
    );
  }
}