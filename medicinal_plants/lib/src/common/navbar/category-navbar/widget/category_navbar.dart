// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, avoid_unnecessary_containers, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/common/textstyle/medicinal_themes.dart';
import '../../../constants/color/medicinal_colors.dart';
import '../controller/category_navbar_controller.dart';
import '../data/category_navbar_data.dart';

class CategoryNavBar extends StatefulWidget {
	@override
	_CategoryNavBarState createState() => _CategoryNavBarState();
}

class _CategoryNavBarState extends State<CategoryNavBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TabControllerManager _controllerManager;

  @override
  void initState() {
	super.initState();
	_controllerManager = TabControllerManager();
	_tabController = _controllerManager.createController(this);
  }

  @override
  void dispose() {
	_controllerManager.dispose();
	super.dispose();
  }

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return Column(
			children: [
				Align(
					alignment: Alignment.centerLeft,
					child: TabBar(
						controller: _tabController,
						isScrollable: true,
						tabs: CategoryNavbarData.categories.map((category) {
							return Tab(text: category);
						}).toList(),
						indicator: UnderlineTabIndicator(
							borderSide: BorderSide(width: 4.0, color: MedicinalColors.DARKGREEN),
							insets: EdgeInsets.symmetric(horizontal: 16.0),
						),
						labelColor: MedicinalColors.DARKGREEN,
						unselectedLabelColor: Colors.black,
						tabAlignment: TabAlignment.start,
					),
				),

				Container(
					height: height*0.5,
					child: TabBarView(
					controller: _tabController,
					children: CategoryNavbarData.categories.map((category) {
						return GridView.builder(
						gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
							crossAxisCount: 2,
							crossAxisSpacing: width*0.001,
							mainAxisSpacing: height*0.001,		
						),
						itemCount: 10,
						itemBuilder: (BuildContext context, int index) {
							return Padding(
								padding: const EdgeInsets.all(8.0),
								child: GestureDetector(
										onTap: () {
										Navigator.pushNamed(context, '/detail');
									},
									child: Card(
										child: Stack(
											children: [
												
												Container(
													margin: EdgeInsets.only(left: width*0.115),
													child: Image(
														image: AssetImage('assets/images/plants/Sample_plant_image.png'),
														width: width*0.20,
														height: height*0.16,
														fit: BoxFit.contain,
													),
												),
										
												Container(
													margin: EdgeInsets.only(top: height*0.13),
													padding: EdgeInsets.all(10.0),
													child: Text(
															"Monstera",
															style: MedicinalThemes.blackTextStyle(size: width*0.035, weight: FontWeight.w600)
													),
												),
										
												Container(
													margin: EdgeInsets.only(top: height*0.15),
													padding: EdgeInsets.all(10.0),
													child: Text(
														"Cough",
														style: MedicinalThemes.greyTextStyle(size: width*0.035, weight: FontWeight.w500)
													),
												),
										
											],
										),
									),
								),
							);
						},
						);
						}).toList(),
					),
				),
			],
		);
	}
}