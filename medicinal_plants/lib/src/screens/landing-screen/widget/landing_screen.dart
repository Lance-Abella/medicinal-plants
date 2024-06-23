// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import '../../../common/constants/color/medicinal_colors.dart';
import '../../../common/constants/properties/medicinal_properties.dart';
import '../../../common/textstyle/medicinal_themes.dart';

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
							'assets/images/Landing_image.png',
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
							'assets/images/Transparent_design.png',
							width: width,
							height: height,
							fit: BoxFit.cover,
						),
					),

					Center(
						child: Text(
							MedicinalProperties.TITLE,
							style: MedicinalThemes.whiteTextStyle(size: width*0.1, weight: FontWeight.w600)
						),
					),

					Center(
						child: Container(
							margin: EdgeInsets.only(top: height*.3),
							height: height*.10,
							width: width*.70,
							child: Center(
								child: Text(
									MedicinalProperties.CAPTION,
									maxLines: 2,
									textAlign: TextAlign.center,
									style: MedicinalThemes.whiteTextStyle(size: width*0.06, weight: FontWeight.w500)
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
									color: MedicinalColors.DARKGREEN,
								),
								child: Center(
									child: Text(
										MedicinalProperties.GET_STARTED,
										maxLines: 2,
										textAlign: TextAlign.center,
										style: MedicinalThemes.whiteTextStyle(size: width*0.06, weight: FontWeight.w500)
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