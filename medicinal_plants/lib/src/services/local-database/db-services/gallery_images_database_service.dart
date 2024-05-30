
import 'package:medicinal_plants/src/services/local-database/db-services/local_database.dart';
import 'package:medicinal_plants/src/services/local-database/scripts/manipulation/gallery_images_dml.dart';
import 'package:sqflite/sqflite.dart';

class GalleryImagesDatabaseService {

	static Future<void> deleteAll() async
	{
		Database database = await LocalDatabase.getDatabase();
		database.rawDelete(GalleryImagesDML.deleteAll());
	}

}