
import 'package:flutter/material.dart';
import 'package:music_app/shared/widgets/text_widget.dart';

import 'butto_widget.dart';

class AppMusicErrorWidget extends StatelessWidget {
  final String error;
  final VoidCallback ? onTryagain;

  const AppMusicErrorWidget({
    required this.error,
    this.onTryagain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget.normal(error,textAlign: TextAlign.center,),
        const SizedBox(
          height: 12,
        ),
        if (onTryagain !=null)
          ButtonWidget(onPressed: onTryagain!,
            title: 'Tente Novamente',),
      ],
    );
  }
}
