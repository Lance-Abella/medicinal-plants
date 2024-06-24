import 'package:flutter/cupertino.dart';

import '../constants/color/medicinal_colors.dart';

class MedicinalUploadImage {
	static medicinalUploadImage({required double width, required double height, required double size}) {
		return Container(			
			width: width,
			height: height,
			decoration: BoxDecoration(
				color: MedicinalColors.LIGHTGREEN,
				borderRadius: BorderRadius.circular(5)
			),
			
			child: Icon(
				CupertinoIcons.tray_arrow_up,
				color: MedicinalColors.BLACK,
				size: size,
			)
		);
	}
}