import 'package:flutter/cupertino.dart';

import '../../../common/buttons/custom_button.dart';

class ProfileButtonsScreen extends StatelessWidget {
	const ProfileButtonsScreen({super.key});

	@override
	Widget build(BuildContext context) {
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;
		
		return Column(
			children: [
				CustomButton(
					onPressed: () {
						// Add your Personal Information button logic here
					},
					label: 'Personal Information',
					width: width,
				),

				CustomButton(
					onPressed: () {
						// Add your Privacy button logic here
					},
					label: 'Privacy',
					width: width,
				),

				CustomButton(
					onPressed: () {
						// Add your Settings button logic here
					},
					label: 'Settings',
					width: width,
				),

				CustomButton(
					onPressed: () {
						Navigator.pushNamed(context, '/landing');
					},
					label: 'Logout',
					width: width,
				),
			],
		);
	}
}