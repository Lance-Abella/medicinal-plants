import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/constants/color/medicinal_colors.dart';

class HomeAppBarScreen extends StatelessWidget implements PreferredSizeWidget {
	const HomeAppBarScreen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;
		
		return AppBar(
				toolbarHeight: height*0.037,
				leading: Container(
					child: Icon(
						CupertinoIcons.square_grid_3x2_fill,
						color: MedicinalColors.DARKGREEN,
						size: height*0.044,            
					)
				),
			);
	}
		@override
	Size get preferredSize => Size.fromHeight(kToolbarHeight);
}