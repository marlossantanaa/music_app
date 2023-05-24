import 'package:flutter/material.dart';
import 'package:music_app/shared/widgets/ScreenWidget.dart';

class GenreListScreen extends StatelessWidget {
  static const routName = '/genre-list';

  const GenreListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      isLoading: false,
      error: 'Error ao carregar a lista de gêneros',
      title: 'Lista de Genêros',
      onTryagain: (){},
      child: Container(),
    );
  }
}
