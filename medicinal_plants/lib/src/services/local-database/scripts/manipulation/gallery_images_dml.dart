
import 'package:medicinal_plants/src/common/constants/medicinal_database_details.dart';

class GalleryImagesDML {

	static String deleteAll() {
		return "DELETE FROM ${MedicinalTables.GALLERY_IMAGES}";
	}

}