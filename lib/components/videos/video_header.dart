import 'package:flutter/material.dart';

class VideoHeader extends StatelessWidget {
  const VideoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('lib/images/video_thumb.png'),
    );
  }
}