// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_bar_screen.dart';
import 'listTile_screen.dart';

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
