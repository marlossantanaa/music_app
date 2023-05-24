import 'package:flutter/material.dart';
import 'package:music_app/core/app/music_app_colors.dart';
import 'package:music_app/shared/widgets/text_widget.dart';

import 'app_music_error_widget.dart';


class ScreenWidget extends StatelessWidget {
  final bool isLoading;
  final String? error;
  final String title;
  final Widget child;
  final VoidCallback? onTryagain;

  const ScreenWidget({Key? key, required this.isLoading, this.error, required this.title, required this.child, this.onTryagain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: TextWidget.bold(title),
      ),
      body: ColoredBox(
        color: MusicAppColors.white60,
        child: SizedBox.expand(
          child: isLoading || error != null
              ? Center(
            child: isLoading ?const CircularProgressIndicator() :AppMusicErrorWidget(error: error!,onTryagain: onTryagain,),
          ):child,
        ),
      ),
    );
  }
}
