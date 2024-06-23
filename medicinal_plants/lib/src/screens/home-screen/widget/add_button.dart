import 'package:flutter/cupertino.dart';

import '../../../common/constants/color/medicinal_colors.dart';

class AddButtonHomeScreen extends StatelessWidget {
	const AddButtonHomeScreen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;
		
		return GestureDetector(
			onTap: () {
				Navigator.pushNamed(context, '/add');
			},
			child: Container(
				width: width*0.15,
				height: height*0.072,
				decoration: BoxDecoration(
					color: MedicinalColors.DARKGREEN,
					borderRadius: BorderRadius.circular(10)
				),
				child: Icon(
					CupertinoIcons.plus_rectangle_fill_on_rectangle_fill,
					color: MedicinalColors.WHITE,
					size: width*0.090,
				)
			),
		);
	}
}