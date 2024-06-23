// lib/screens/add_plant_app_bar.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../common/constants/color/medicinal_colors.dart';
import '../../../common/constants/properties/medicinal_properties.dart';
import '../../../common/textstyle/medicinal_themes.dart';

class AddPlantAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddPlantAppBar({super.key});

  @override
  Widget build(BuildContext context) {
	double width = MediaQuery.of(context).size.width;
	double height = MediaQuery.of(context).size.height;

	return AppBar(
		centerTitle: true,
	
		leading: GestureDetector(
			onTap: () {
			Navigator.pushNamed(context, '/navbar');
			},
			child: Icon(
				CupertinoIcons.back,
				color: MedicinalColors.BLACK,
			),
		),

		title: Text(
			MedicinalProperties.ADD_PLANT,
			style: MedicinalThemes.blackTextStyle(size: width * 0.055, weight: FontWeight.w600),
		),
	);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
