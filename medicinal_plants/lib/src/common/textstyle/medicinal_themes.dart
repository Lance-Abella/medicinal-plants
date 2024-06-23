// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/color/medicinal_colors.dart';

class MedicinalThemes {

	static whiteTextStyle({required double size, required FontWeight weight}){
		return GoogleFonts.poppins(
			textStyle: TextStyle(
				color: MedicinalColors.WHITE,
				fontSize: size,
				fontWeight: weight,
			)
		);
	}

	static blackTextStyle({required double size, required FontWeight weight}){
		return GoogleFonts.poppins(
			textStyle: TextStyle(
				color: MedicinalColors.BLACK,
				fontSize: size,
				fontWeight: weight,
			)
		);
	}

	static greyTextStyle({required double size, required FontWeight weight}){
		return GoogleFonts.poppins(
			textStyle: TextStyle(
				color: MedicinalColors.GREY,
				fontSize: size,
				fontWeight: weight,
			)
		);
	}
}

