// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicinal_plants/src/screens/profile-screen/widget/app_bar_screen.dart';
import 'package:medicinal_plants/src/screens/profile-screen/widget/buttons_screen.dart';
import '../../../common/buttons/custom_button.dart';

class ProfileScreen extends StatelessWidget {
	const ProfileScreen({Key? key});

	@override
	Widget build(BuildContext context) {

		return Scaffold(
			appBar: ProfileAppBar(),
			body: ProfileButtonsScreen()
		);
	}
}