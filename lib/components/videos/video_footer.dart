import 'package:fatec_internship/components/pattern_button.dart';
import 'package:flutter/material.dart';

class VideoFooter extends StatelessWidget {
  const VideoFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PatternButton(buttonTitle: "Assistir o vídeo",)
      ],
    );
  }
}