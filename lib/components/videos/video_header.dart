import 'package:flutter/material.dart';

class VideoHeader extends StatelessWidget {
  final String caminhoImagem;
  const VideoHeader({super.key, required this.caminhoImagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(caminhoImagem),
    );
  }
}