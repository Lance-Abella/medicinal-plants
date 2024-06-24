import 'package:flutter/cupertino.dart';

import '../../../common/constants/properties/medicinal_properties.dart';
import '../../../common/textstyle/medicinal_themes.dart';

class CaptionsHomeScreen extends StatelessWidget {
	const CaptionsHomeScreen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;
		
		return Padding(
			padding: const EdgeInsets.only(left: 10.0, right: 10.0),
			child: Column(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				Text(
					MedicinalProperties.LETS_FIND,
					style: MedicinalThemes.blackTextStyle(size: width*0.068, weight: FontWeight.w500)
				),
					
				Text(
					MedicinalProperties.MEDICINAL_PLANTS,
					style: MedicinalThemes.blackTextStyle(size: width*0.068, weight: FontWeight.w500)
				),
			
			],
			),
		);
	}
}