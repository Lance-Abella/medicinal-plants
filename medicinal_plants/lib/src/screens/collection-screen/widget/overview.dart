// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/screens/collection-screen/widget/listTile_screen.dart';
import '../../../common/textstyle/medicinal_themes.dart';
import '../data/collection_screen_data.dart';
import 'app_bar_screen.dart';

class CollectionScreen extends StatelessWidget {
	
	CollectionScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: CollectionAppBar(),
			body: ListTileScreen(),
		);
	}
}