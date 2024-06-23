import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/common/input-fields/medicinal_dropdown.dart';
import 'package:medicinal_plants/src/common/input-fields/medicinal_textfield.dart';
import 'package:medicinal_plants/src/common/input-fields/medicinal_upload_image.dart';

import '../../../common/constants/color/medicinal_colors.dart';
import '../../../common/constants/properties/medicinal_properties.dart';
import '../../../common/textstyle/medicinal_themes.dart';

class InputFieldsScreen extends StatelessWidget {
	const InputFieldsScreen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return SingleChildScrollView(
				  child: Padding(
						  padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
						  child: Column(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [

								Text(
									MedicinalProperties.UPLOAD_IMAGE,
									style: MedicinalThemes.blackTextStyle(size: width*0.043, weight: FontWeight.w500)
								),
						  
								MedicinalUploadImage.medicinalUploadImage(width: width*0.87, height: height*0.20, size: height*0.03),
				  
								SizedBox(height: height*0.02,),
				  
								Text(
									MedicinalProperties.INFORMATION,
									style: MedicinalThemes.blackTextStyle(size: width*0.043, weight: FontWeight.w500)
								),
				  
								MedicinalTextfields.medicinalTextfield(maxlines: 3, hSize: width*0.87, fSize: width*0.035, hintText: "Input Information of the Plant"),

								SizedBox(height: height*0.02,),

								Text(
									MedicinalProperties.MEDICINAL_PLANT_NAME,
									style: MedicinalThemes.blackTextStyle(size: width*0.043, weight: FontWeight.w500)
								),

								MedicinalTextfields.medicinalTextfield(maxlines: 1, hSize: width*0.87, fSize: width*0.035, hintText: "Medicinal Plant Name"),

								SizedBox(height: height*0.02,),

								Text(
									MedicinalProperties.CATEGORY,
									style: MedicinalThemes.blackTextStyle(size: width*0.043, weight: FontWeight.w500)
								),

								MedicinalDropdown(width: width*0.99,),

								SizedBox(height: height*0.02,),

								Text(
									MedicinalProperties.SCIENTIFIC_NAME,
									style: MedicinalThemes.blackTextStyle(size: width*0.043, weight: FontWeight.w500)
								),

								MedicinalTextfields.medicinalTextfield(maxlines: 1, hSize: width*0.87, fSize: width*0.035, hintText: "Scientific Name"),

								SizedBox(height: height*0.02,),

								Center(
									child: Container(
										width: width*.71,
										height: height*.0678,
										decoration: BoxDecoration(
										color: MedicinalColors.DARKGREEN,
										borderRadius: BorderRadius.circular(10)
										),
										padding: EdgeInsets.all(10.0),
										child: Center(
										child: Text(
											MedicinalProperties.SAVE,
											style: MedicinalThemes.whiteTextStyle(size: width*0.06, weight: FontWeight.w600)
										),
										),
									),
								),

								SizedBox(height: height*0.02,),

							],
						  ),
						),
				);
	}
}