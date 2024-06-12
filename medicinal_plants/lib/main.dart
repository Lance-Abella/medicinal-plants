// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/buttons/uploadImage-button.dart';
import 'package:medicinal_plants/src/navbar/bottom-navbar.dart';
import 'package:medicinal_plants/src/screens/addPlant-screen.dart';
import 'package:medicinal_plants/src/screens/detail-screen.dart';
import 'package:medicinal_plants/src/screens/home-screen.dart';
import 'package:medicinal_plants/src/screens/landing-screen.dart';

void main() {
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
        '/upload': (context) => UploadImageButton(),

      },
    );
  }
}


