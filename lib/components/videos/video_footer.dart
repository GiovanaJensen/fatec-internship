import 'package:fatec_internship/components/botoes/button.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VideoFooter extends StatelessWidget {
  const VideoFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PatternButton(buttonTitle: "Assistir o vídeo", hasDialog: true, bgColor: ThemeColors.primaryColor,)
      ],
    );
  }
}