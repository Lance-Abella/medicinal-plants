import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/constants/color/medicinal_colors.dart';

class SearchHomeScreen extends StatelessWidget {
  const SearchHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;
    
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        width: width*0.73,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: MedicinalColors.LIGHTGREEN,
            contentPadding: EdgeInsets.all(15),
            hintText: "Search plants..",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
              
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              CupertinoIcons.search,
              color: MedicinalColors.GREY,
              size: height*0.03,
            )
          ),
              
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        
          ),
        ),
      ),
    );
;
  }
}