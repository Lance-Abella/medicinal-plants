class FavoriteScreenData {
  static final List<Map<String, String>> items = List<Map<String, String>>.generate(
		20,
		(index) => {
			'image': 'assets/images/plants/Sample_plant_image.png', 
			'name': 'Monstera',
			'category': 'Cough',
		},
	);
}