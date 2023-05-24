import 'package:get/get.dart';
import 'package:music_app/core/services/api_services.dart';
import 'package:music_app/features/presentation/controllers/genre_list_controller.dart';

import '../../../shared/features/data/repositories/genre_list_repository.dart';

class GenreListBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(GenreListController(GenreListRepository(apiService:Get.find<ApiService>(),
    ),
    ),
    );
  }
  
}