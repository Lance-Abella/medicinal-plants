import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../common/constants/color/medicinal_colors.dart';
import '../../../common/textstyle/medicinal_themes.dart';

class Screen extends StatelessWidget {
	const Screen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return Column(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				Stack(
					children: [
						Container(
							decoration: BoxDecoration(
								color: const Color.fromARGB(255, 222, 207, 207),
								borderRadius: BorderRadius.only(
									bottomRight: Radius.circular(40.0),
								)
							),
							child: Image(
								image: AssetImage('assets/images/plants/Sample_plant_image.png'),
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
								margin: EdgeInsets.only(left: width*0.04, top: height*0.057),
								child: Icon(
									CupertinoIcons.back,
									color: MedicinalColors.BLACK,
								),
							),
						),
					],
				),
				
				SizedBox(height: height*0.02,),
				
				Padding(
					padding: const EdgeInsets.only(left: 10.0),
					child: Text(
					"Monstera",
					style: MedicinalThemes.blackTextStyle(size: width*0.055, weight: FontWeight.w600)
					),
				),
				
				Padding(
					padding: const EdgeInsets.only(left: 10.0),
					child: Text(
					"Cough",
					style: MedicinalThemes.greyTextStyle(size: width*0.050, weight: FontWeight.w600)
					),
				),

				SizedBox(height: height*0.02,),
		
				Container(
					width: width*.60,
					decoration: BoxDecoration(
						color: MedicinalColors.DARKGREEN,
						borderRadius: BorderRadius.only(
							bottomRight: Radius.circular(15.0),
							topRight: Radius.circular(15.0)
						)
					),
					padding: EdgeInsets.all(10.0),
					child: Text(
						"Scientific Name",
						textAlign: TextAlign.center,
						style: MedicinalThemes.whiteTextStyle(size: width*0.050, weight: FontWeight.w600)
					),
				),

				SizedBox(height: height*0.02,),
		
				Container(
					width: width*.99,
					padding: EdgeInsets.only(left: 10.0, right: 10.0),
					child: Divider( 
						color: Colors.black, 
						thickness: 1.0,
						height: height*.02, 
					),
				),
			],
		);
	}
}