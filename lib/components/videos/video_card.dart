import 'package:fatec_internship/components/videos/video_content.dart';
import 'package:fatec_internship/components/videos/video_footer.dart';
import 'package:fatec_internship/components/videos/video_header.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: const Column(
        children: [
          VideoHeader(),
          VideoContent(),
          VideoFooter(),
        ],
      ),
    );
  }
}