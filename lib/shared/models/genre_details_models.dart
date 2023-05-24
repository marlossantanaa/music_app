import 'genre_model.dart';
import 'music_model.dart';

class GenreDetailsModel extends GenreModel{
  final List<MusicModel>musics ;

  GenreDetailsModel( {required  this.musics,required super.title, required super.searchString});
 factory GenreDetailsModel.fromMap(Map<String,dynamic>map){
   return GenreDetailsModel(musics: (map['music']as List).map((music)=>MusicModel.fromMap(music)).toList() ,
       title: map['title']?? '',
       searchString: map['searchString']??'');
 }

}