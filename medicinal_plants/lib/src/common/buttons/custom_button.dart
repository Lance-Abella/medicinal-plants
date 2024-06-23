// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/common/textstyle/medicinal_themes.dart';

class CustomButton extends StatelessWidget {
	final VoidCallback? onPressed;
	final String label;
	final double width;

	const CustomButton({
		Key? key,
		required this.onPressed,
		required this.label,
		required this.width,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return GestureDetector(
			onTap: onPressed,
			child: Container(
				width: double.infinity,
				padding: EdgeInsets.symmetric(vertical: 16),
				decoration: BoxDecoration(
					border: Border(
						bottom: BorderSide(
							color: Colors.grey,
							width: width*0.002,
						),
					),
				),
				child: Padding(
					padding: const EdgeInsets.all(8.0),
					child: Text(
						label,
						textAlign: TextAlign.start,
						style: MedicinalThemes.blackTextStyle(size: width*0.04, weight: FontWeight.w400)
					),
				),
			),
		);
	}
}