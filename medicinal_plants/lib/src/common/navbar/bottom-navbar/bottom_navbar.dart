// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../screens/camera-screen/widget/camera_screen.dart';
import '../../../screens/collection-screen/widget/overview.dart';
import '../../../screens/favorite-screen/widget/overview.dart';
import '../../../screens/home-screen/widget/overview.dart';
import '../../../screens/profile-screen/widget/overview.dart';
import '../../constants/color/medicinal_colors.dart';


class BottomNavbar extends StatefulWidget {
	const BottomNavbar({super.key});

	@override
	State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
	int _currentIndex = 0;

	final tabs = [
		const HomeScreen(),
		FavoriteScreen(),
		const CameraScreen(),
		CollectionScreen(),
		const ProfileScreen(),
	];

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return Scaffold(
			body: tabs[_currentIndex],

			bottomNavigationBar: SizedBox(
				height: height*0.11,
				child: BottomNavigationBar(
				currentIndex: _currentIndex,
				type: BottomNavigationBarType.shifting,
				selectedItemColor: MedicinalColors.DARKGREEN,
				unselectedItemColor: MedicinalColors.GREY,
				backgroundColor: MedicinalColors.WHITE,
				elevation: 10,
				
				items: [
					BottomNavigationBarItem(
						icon: Icon(
							CupertinoIcons.house_alt,
							color: MedicinalColors.DARKGREEN,
							size: width * 0.08,
							),
						label: "",
					),
				
					BottomNavigationBarItem(
						icon: Icon(
							CupertinoIcons.heart,
							color: MedicinalColors.DARKGREEN,
							size: width * 0.08,
							),
						label: "",
					),
				
					BottomNavigationBarItem(
						icon: Container(
							decoration: BoxDecoration(
								color: MedicinalColors.DARKGREEN,
								borderRadius: BorderRadius.circular(50)
							),
							height: height*0.06,
							width: width*0.12,
							child: Icon(
							CupertinoIcons.camera,
							color: MedicinalColors.WHITE,
							size: width * 0.08,
							),
						),
						label: "",
					),
				
					BottomNavigationBarItem(
						icon: Icon(
							CupertinoIcons.collections,
							color: MedicinalColors.DARKGREEN,
							size: width * 0.08,
							),
						label: "",
					),
				
					BottomNavigationBarItem(
						icon: Icon(
							CupertinoIcons.person,
							color: MedicinalColors.DARKGREEN,
							size: width * 0.09,
							),
						label: "",
					),
					
				],
				
				onTap: (index) {
					setState(() {
						_currentIndex = index;
					});
				},
				
				),
			),
		);
	}
}