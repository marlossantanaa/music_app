import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:music_app/core/app/music_app_colors.dart';
import 'package:music_app/features/presentation/bidings/genre_list_bindings.dart';

import '../../features/presentation/screen/genre_list_screen.dart';

class MusicAppMaterial{
MusicAppMaterial._();
static String get getTittle   =>"Music App";
static List<GetPage>get getPages=>[
  GetPage(name: GenreListScreen.routeName,
    page: ()=> const GenreListScreen(),
    binding: GenreListBindings()
  ),

];

static ThemeData get getTheme => ThemeData(
  primaryColor: MusicAppColors.primaryColor,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: MusicAppColors.secondaryColor,
    titleTextStyle: TextStyle(
      color: MusicAppColors.primaryColor,
      fontWeight: FontWeight.normal,
      fontSize: 18,
        fontFamily:'Nunito'
    ),
    centerTitle: true,

  )
);
}