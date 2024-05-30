
// ignore_for_file: constant_identifier_names

const MEDICINAL_PLANTS_LOCAL_DB_PATH = "Medicinal_Plants_Local.db";
const DATABASE_VERSION = 1;

class MedicinalColumns {

	// COMMON
	static const ID = "id";
	static const DESCRIPTION = "description";
	static const USERNAME = "username";
	static const PLANT_ID = "plantId";
	static const IMAGE = "image";


	// USER
	static const PASSWORD = "password";

	// PLANT TREATS
	static const SICKNESS_ID = "sicknessId";

	// PLANT
	static const PLANT_NAME = "plantName";
	static const SCIENTIFIC_NAME = "scientificName";
	static const CUSTOM = "custom";

	//GALLERY IMAGES
	static const LOCATION = "location";
	static const TAGS = "tags";

	//SETTINGS
	static const THEME = "theme";
}


class MedicinalTables {

	static const PLANT = "PLANT";
	static const USER_FAVORITES = "USER_FAVORITES";
	static const USER = "USER";
	static const PLANT_TREATS = "PLANT_TREATS";
	static const SICKNESS = "SICKNESS";
	static const GALLERY_IMAGES = "GALLERY_IMAGES";
	static const SETTINGS = "SETTINGS";

}