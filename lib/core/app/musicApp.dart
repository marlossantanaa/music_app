import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/core/app/music_app_controller.dart';
import 'package:music_app/features/presentation/screen/genre_list_screen.dart';
import 'music_app_material.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: MusicAppMaterial.getTitle,
      theme: MusicAppMaterial.getTheme,
      getPages: MusicAppMaterial.getPages,
      initialRoute: GenreListScreen.routeName,
      initialBinding: MusicAppInitialBindings(),

    );

  }
}
