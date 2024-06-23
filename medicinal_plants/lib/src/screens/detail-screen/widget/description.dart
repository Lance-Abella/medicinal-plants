import 'package:flutter/cupertino.dart';

import '../../../common/textstyle/medicinal_themes.dart';

class DetailScreenDescription extends StatelessWidget {
	const DetailScreenDescription({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;
		
		return Column(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				Padding(
					padding: const EdgeInsets.only(left: 10.0),
					child: Text(
					"About",
					style: MedicinalThemes.blackTextStyle(size: width*0.045, weight: FontWeight.w600)
					),
				),

				SizedBox(height: height*0.01,),
				
				Padding(
					padding: const EdgeInsets.only(left: 10.0, right: 10.0),
					child: Text(
					"Monstera deliciosa, the Swiss cheese plant or split-leaf philodendron is a species of flowering plant native to tropical forests of southern Mexico, south to Panama. It has been introduced to many tropical areas, and has become a mildly invasive species in Hawaii, Seychelles, Ascension Island and the Society Islands.",
					style: MedicinalThemes.blackTextStyle(size: width*0.038, weight: FontWeight.w300),
					maxLines: 8,
					),
				),
			],
		);
	}
}