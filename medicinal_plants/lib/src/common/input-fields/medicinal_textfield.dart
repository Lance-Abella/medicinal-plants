import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/common/textstyle/medicinal_themes.dart';

import '../constants/color/medicinal_colors.dart';

class MedicinalTextfields {
	static medicinalTextfield ({required int maxlines, required double hSize, required double fSize, required String hintText}){
		return SizedBox(
			width: hSize,
			child: TextField(
			maxLines: maxlines,
			decoration: InputDecoration(
				filled: true,
				fillColor: MedicinalColors.LIGHTGREEN,
				hintText: hintText,
				hintStyle: MedicinalThemes.greyTextStyle(size: fSize, weight: FontWeight.w500),
			
				border: OutlineInputBorder(
					borderRadius: BorderRadius.circular(5),
					borderSide: BorderSide.none,
				),
			),
			
			textAlignVertical: TextAlignVertical.top,
			),
		);	
	}
}