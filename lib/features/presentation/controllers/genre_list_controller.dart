import 'package:get/get.dart';

import '../../../core/errors/failures.dart';
import '../../../core/mixins/screen_loading_and_error_mixin.dart';
import '../../../shared/features/data/repositories/genre_list_repository.dart';
import '../../../shared/models/genre_model.dart';

class GenreListController extends GetxController
    with ScreenLoadingAndErrorMixin {
  final GenreListRepository _genreListRepository;

  GenreListController(GenreListRepository genreListRepository)
      : _genreListRepository = genreListRepository;
  final RxList<GenreModel>genres=RxList([]);

  @override
  void onInit() {
    getGenreList();
    super.onInit();
  }

  Future<void> getGenreList() async {
    setLoadingToTrue();
    setError(null);
    final getGenresResponse = await _genreListRepository.getGenrelList();
    getGenresResponse.fold((Failure failureResponse) {
      if (failureResponse is GetGenreListFailure) {
        setError(failureResponse.message);
      }
    }, (List<GenreModel>genreResponse) {
      print(genreResponse);
      genres.value =genreResponse;
    });
    setLoadingToFalse();
  }
}
