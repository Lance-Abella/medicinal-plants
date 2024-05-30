
// ignore_for_file: constant_identifier_names


import '../../../../common/constants/medicinal_database_details.dart';

class MedicinalDDL {

	static const String CREATE_PLANT_TABLE = "CREATE TABLE ${MedicinalTables.PLANT}"
		"("
			"${MedicinalColumns.ID} TEXT PRIMARY KEY, "
			"${MedicinalColumns.IMAGE} TEXT, "
			"${MedicinalColumns.PLANT_NAME} TEXT, "
			"${MedicinalColumns.SCIENTIFIC_NAME} TEXT, "
			"${MedicinalColumns.DESCRIPTION} TEXT, "
			"${MedicinalColumns.CUSTOM} INTEGER"
		")"; 

	static const String CREATE_SICKNESS_TABLE = "CREATE TABLE ${MedicinalTables.SICKNESS}"
		"("
			"${MedicinalColumns.ID} TEXT PRIMARY KEY, "
			"${MedicinalColumns.ID} TEXT"
		")";
	
	static const String CREATE_USER_TABLE = "CREATE TABLE ${MedicinalTables.USER}"
		"("
			"${MedicinalColumns.USERNAME} TEXT PRIMARY KEY, "
			"${MedicinalColumns.PASSWORD} TEXT, "
			"${MedicinalColumns.IMAGE} TEXT"
		")";

	static const String CREATE_GALLERY_IMAGES_TABLE = "CREATE TABLE ${MedicinalTables.GALLERY_IMAGES}"
		"("
			"${MedicinalColumns.ID} TEXT PRIMARY KEY, "
			"${MedicinalColumns.LOCATION} TEXT, "
			"${MedicinalColumns.TAGS} TEXT"
		")";

	static const String CREATE_USER_FAVORITES_TABLE = "CREATE TABLE ${MedicinalTables.USER_FAVORITES}"
		"("
			"${MedicinalColumns.USERNAME} TEXT, "
			"${MedicinalColumns.PLANT_ID} TEXT, "
			"FOREIGN KEY (${MedicinalColumns.USERNAME}) REFERENCES ${MedicinalTables.USER} (${MedicinalColumns.USERNAME}), "
			"FOREIGN KEY (${MedicinalColumns.PLANT_ID}) REFERENCES ${MedicinalTables.PLANT} (${MedicinalColumns.ID})"
		")";

	static const String CREATE_PLANT_TREATS_TABLE = "CREATE TABLE ${MedicinalTables.PLANT_TREATS}"
		"("
			"${MedicinalColumns.PLANT_ID} TEXT, "
			"${MedicinalColumns.SICKNESS_ID} TEXT, "
			"FOREIGN KEY (${MedicinalColumns.PLANT_ID}) REFERENCES ${MedicinalTables.PLANT} (${MedicinalColumns.ID}), "
			"FOREIGN KEY (${MedicinalColumns.SICKNESS_ID}) REFERENCES ${MedicinalTables.SICKNESS} (${MedicinalColumns.ID})"
		")";
}