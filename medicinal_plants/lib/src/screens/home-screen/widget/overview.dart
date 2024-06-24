// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/navbar/category-navbar/widget/category_navbar.dart';
import 'add_button.dart';
import 'app_bar_screen.dart';
import 'caption.dart';
import 'search.dart';


class HomeScreen extends StatelessWidget {
	const HomeScreen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return Scaffold(
			appBar: HomeAppBarScreen(),
			body: SingleChildScrollView(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.start,
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
					
						CaptionsHomeScreen(),
						
						SizedBox(height: height*0.02,),
						
						Row(
						mainAxisAlignment: MainAxisAlignment.start,
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							SearchHomeScreen(),
							SizedBox(width: width*0.02,),
							AddButtonHomeScreen(),
						],
						),
						
						SizedBox(height: height*0.02,),
						
						CategoryNavBar(),	
					],
				),
			),
		);
	}
}