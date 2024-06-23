// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_plants/src/screens/detail-screen/widget/buttons.dart';
import 'package:medicinal_plants/src/screens/detail-screen/widget/description.dart';
import 'package:medicinal_plants/src/screens/detail-screen/widget/screen.dart';
import '../../../common/constants/color/medicinal_colors.dart';
import '../../../common/constants/properties/medicinal_properties.dart';
import '../../../common/textstyle/medicinal_themes.dart';






class DetailScreen extends StatelessWidget {
	const DetailScreen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return Scaffold(
			body: SingleChildScrollView(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.start,
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Screen(),

						SizedBox(height: height*0.01,),
				
						DetailScreenDescription(),

						SizedBox(height: height*0.01,),
				
						DetailScreenButtons(),

						SizedBox(height: height*0.02,),
				],
				),
			),
		);
	}
}