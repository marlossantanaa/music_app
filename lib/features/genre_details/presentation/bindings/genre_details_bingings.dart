import 'package:get/get.dart';
import 'package:music_app/features/genre_details/presentation/controllers/genre_details_controllers.dart';

class GenreDetailsBindings implements Bindings{
  @override
  void dependencies() {
Get.put(GenreDetailsController());
  }

}