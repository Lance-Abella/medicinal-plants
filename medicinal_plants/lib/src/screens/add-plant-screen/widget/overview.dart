// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/screens/add-plant-screen/widget/input_fields_screen.dart';

import '../../../common/constants/color/medicinal_colors.dart';
import '../../../common/constants/properties/medicinal_properties.dart';
import '../../../common/textstyle/medicinal_themes.dart';
import '../data/add_plant_screen_data.dart';
import 'app_bar_screen.dart';


class AddPlantScreen extends StatefulWidget {
	const AddPlantScreen({super.key});

	@override
	State<AddPlantScreen> createState() => _AddPlantScreenState();
}

class _AddPlantScreenState extends State<AddPlantScreen> {
	String? _selectedItem;

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return Scaffold(
		appBar: AddPlantAppBar(),

		body: InputFieldsScreen(),
			
		);
	}
	}