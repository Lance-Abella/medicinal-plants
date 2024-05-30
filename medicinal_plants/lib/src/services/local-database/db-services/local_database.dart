
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../../common/constants/medicinal_database_details.dart';
import '../scripts/definition/medicinal_plants_ddl.dart';

class LocalDatabase {

	static Future<String> getFullPath() async 
	{
		return join(await getDatabasesPath(), MEDICINAL_PLANTS_LOCAL_DB_PATH);
	}

	static Future<Database> getDatabase() async 
	{
		return await openDatabase(await getFullPath(), version: DATABASE_VERSION, 
			onCreate: (Database database, int version) async {
				await database.execute(MedicinalDDL.CREATE_PLANT_TABLE);
				await database.execute(MedicinalDDL.CREATE_SICKNESS_TABLE);
				await database.execute(MedicinalDDL.CREATE_USER_TABLE);
				await database.execute(MedicinalDDL.CREATE_GALLERY_IMAGES_TABLE);
				await database.execute(MedicinalDDL.CREATE_USER_FAVORITES_TABLE);
				await database.execute(MedicinalDDL.CREATE_PLANT_TREATS_TABLE);
			});
	}

	static Future<void> deleteMedicinalDatabase() async 
	{
		await deleteDatabase(MEDICINAL_PLANTS_LOCAL_DB_PATH);
	}
}