// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/common/constants/color/medicinal_colors.dart';
import 'package:medicinal_plants/src/common/textstyle/medicinal_themes.dart';


class CustomListTile extends StatelessWidget {
  final String image;
  final String name;
  final String category;
  final double width;
  final double height;

  const CustomListTile({
    required this.image,
    required this.name,
    required this.category,
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.01),
      decoration: BoxDecoration(
        color: MedicinalColors.WHITE,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: MedicinalColors.LIGHTGREY,
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
                image: AssetImage(image),
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
                    name,
                    style: MedicinalThemes.blackTextStyle(size: width * 0.035, weight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  Text(
                    category,
                    style: MedicinalThemes.greyTextStyle(size: width * 0.032, weight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
