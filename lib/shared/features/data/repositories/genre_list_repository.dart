import 'package:dartz/dartz.dart';
import 'package:music_app/core/errors/exceptions.dart';
import 'package:music_app/core/services/api_services.dart';
import 'package:music_app/shared/models/genre_model.dart';

import '../../../../core/errors/failures.dart';

class GenreListRepository{
  final ApiService _apiService;
  GenreListRepository({required ApiService apiService}) :_apiService=apiService;
Future<Either<Failure,List<GenreModel>>> getGenrelList()async{
  try{
    final genres=await _apiService.getGenres();
    return Right(genres);

  }on ApiException catch(apiException){
    return Left (GetGenreListFailure(apiException.message));
  }on GeneralException catch (generalException){
    return Left (GetGenreListFailure(generalException.message));
  }

}
}