import 'package:fatec_internship/components/types/Dica.dart';
import 'package:fatec_internship/components/videos/video_content.dart';
import 'package:fatec_internship/components/videos/video_footer.dart';
import 'package:fatec_internship/components/videos/video_header.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final Dica dica;
  const VideoCard({super.key, required this.dica});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          VideoHeader(caminhoImagem: dica.caminhoImagem,),
          VideoContent(caminhoImagemCanal: dica.caminhoDaFotoDoCanal, nomeDoCanal: dica.nomeDoCanal, tituloVideo: dica.titulo,),
          const VideoFooter(),
        ],
      ),
    );
  }
}