// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Map<String, String>> items = List<Map<String, String>>.generate(
    20,
    (index) => {
      'image': 'assets/images/Sample plants.png', 
      'name': 'Monstera',
      'category': 'Cough',
    },
  );

  FavoriteScreen({super.key});

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
            margin: EdgeInsets.only(left: width * 0.335, top: height * 0.041),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Favorites",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: width * 0.055,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: height * 0.12),
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.01),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), 
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width * 0.01),
                          child: Image(
                            image: AssetImage(items[index]['image']!),
                            width: width * 0.20,
                            height: height * 0.16,
                            fit: BoxFit.contain,
                          ),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items[index]['name']!,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.035,
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                items[index]['category']!,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: width * 0.035,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}