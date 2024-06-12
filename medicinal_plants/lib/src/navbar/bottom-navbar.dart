// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/screens/camera-screen.dart';
import 'package:medicinal_plants/src/screens/collection-screen.dart';
import 'package:medicinal_plants/src/screens/favorite-screen.dart';
import 'package:medicinal_plants/src/screens/home-screen.dart';
import 'package:medicinal_plants/src/screens/profile-screen.dart';

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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,                
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: const AssetImage('assets/icons/Home.png'),
              height: height * 0.05,
              width: width * 0.08,
            ),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Image(
              image: const AssetImage('assets/icons/Favorite.png'),
              height: height * 0.05,
              width: width * 0.08,
            ),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Image(
              image: const AssetImage('assets/icons/Scan.png'),
              height: height * 0.05,
              width: width * 0.15,
            ),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Image(
              image: const AssetImage('assets/icons/Collection.png'),
              height: height * 0.05,
              width: width * 0.08,
            ),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Image(
              image: const AssetImage('assets/icons/Profile.png'),
              height: height * 0.05,
              width: width * 0.08,
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
    );
  }
}