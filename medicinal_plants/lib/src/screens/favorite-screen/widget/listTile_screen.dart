// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../common/list-tile/list_tile.dart';
import '../../collection-screen/data/collection_screen_data.dart';

class FavoriteListTileScreen extends StatelessWidget {
  const FavoriteListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        ListView.builder(
          itemCount: CollectionScreenData.items.length,
          itemBuilder: (context, index) {
            return CustomListTile(
              image: CollectionScreenData.items[index]['image']!,
              name: CollectionScreenData.items[index]['name']!,
              category: CollectionScreenData.items[index]['category']!,
              width: width,
              height: height,
            );
          },
        ),
      ],
    );
  }
}
