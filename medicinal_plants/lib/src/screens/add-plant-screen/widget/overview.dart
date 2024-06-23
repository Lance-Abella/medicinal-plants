// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'app_bar_screen.dart';
import 'input_fields_screen.dart';

class AddPlantScreen extends StatefulWidget {
  const AddPlantScreen({super.key});

  @override
  State<AddPlantScreen> createState() => _AddPlantScreenState();
}

class _AddPlantScreenState extends State<AddPlantScreen> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddPlantAppBar(),
      body: InputFieldsScreen(),
    );
  }
}
