// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}


