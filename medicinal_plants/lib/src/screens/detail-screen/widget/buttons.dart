import 'package:flutter/cupertino.dart';

import '../../../common/constants/color/medicinal_colors.dart';
import '../../../common/constants/properties/medicinal_properties.dart';
import '../../../common/textstyle/medicinal_themes.dart';

class DetailScreenButtons extends StatelessWidget {
  const DetailScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;
    
    return Padding(
							padding: const EdgeInsets.all(8.0),
							child: Row(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.start,
								children: [
									SizedBox(width: width*0.02),
									
									Container(
									
									decoration: BoxDecoration(
										color: MedicinalColors.LIGHTGREEN,
										borderRadius: BorderRadius.circular(10)
									),
									height: height*0.067,
									width: width*0.15,
									child: Icon(
										CupertinoIcons.collections,
										color: MedicinalColors.DARKGREEN,
										size: width * 0.08,
										),
									),
								
									SizedBox(width: width*0.05),
								
									Container(
									width: width*.71,
									height: height*.0678,
									decoration: BoxDecoration(
										color: MedicinalColors.DARKGREEN,
										borderRadius: BorderRadius.circular(10)
									),
									
									padding: EdgeInsets.all(10.0),
									child: Center(
										child: Text(
											MedicinalProperties.ADD_FAVORITE,
											style: MedicinalThemes.whiteTextStyle(size: width*0.050, weight: FontWeight.w600)
										),
									),
									),
								],
							),
						);
  }
}