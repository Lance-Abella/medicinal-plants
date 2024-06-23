// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/common/constants/color/medicinal_colors.dart';
import 'package:medicinal_plants/src/common/constants/properties/medicinal_properties.dart';
import 'package:medicinal_plants/src/common/textstyle/medicinal_themes.dart';
import 'package:medicinal_plants/src/screens/favorite-screen/data/favorite_screen_data.dart';
import 'package:medicinal_plants/src/screens/favorite-screen/widget/app_bar_screen.dart';
import 'package:medicinal_plants/src/screens/favorite-screen/widget/listTile_screen.dart';

class FavoriteScreen extends StatelessWidget {
	

	FavoriteScreen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return Scaffold(
      appBar: FavoriteAppBar(),
			body: FavoriteListTileScreen()
		);
	}
}