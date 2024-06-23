// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/common/textstyle/medicinal_themes.dart';
import '../../screens/add-plant-screen/data/add_plant_screen_data.dart';
import '../constants/color/medicinal_colors.dart';

class MedicinalDropdown extends StatefulWidget {
final double width;

MedicinalDropdown({required this.width});

@override
_MedicinalDropdownState createState() => _MedicinalDropdownState();
}

class _MedicinalDropdownState extends State<MedicinalDropdown> {
String? selectedItem;

@override
Widget build(BuildContext context) {
	double width = MediaQuery.of(context).size.width;
	double height = MediaQuery.of(context).size.height;

	return Container(
		width: width * 0.874,
		padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
		decoration: BoxDecoration(
			borderRadius: BorderRadius.circular(5.0),
			color: MedicinalColors.LIGHTGREEN,
		),
		child: DropdownButton<String>(
			value: selectedItem,
			hint: Text(
			'Select Category',
			style: MedicinalThemes.greyTextStyle(size: width * 0.035, weight: FontWeight.w300)
			),
			isExpanded: true,
			underline: SizedBox(),
			onChanged: (newValue) {
			setState(() {
				selectedItem = newValue;
			});
			},
			items: AddPlantData.dropdownItems.map((String item) {
			return DropdownMenuItem<String>(
				value: item,
				child: Text(item),
			);
			}).toList(),
		),
	);
}
}
