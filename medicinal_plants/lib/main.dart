// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'src/common/navbar/bottom-navbar/bottom_navbar.dart';
import 'src/screens/add-plant-screen/widget/overview.dart';
import 'src/screens/detail-screen/widget/overview.dart';
import 'src/screens/home-screen/widget/overview.dart';
import 'src/screens/landing-screen/widget/landing_screen.dart';

void main() {
  // debugPaintSizeEnabled = true;
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			home: const LandingScreen(),
			routes: {
				'/landing': (context) => const LandingScreen(),
				'/home': (context) => const HomeScreen(),
				'/navbar': (context) => const BottomNavbar(),
				'/detail': (context) => const DetailScreen(),
				'/add': (context) => const AddPlantScreen(),
			},
		);
	}
}


