import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/components/sub_header.dart';
import 'package:fatec_internship/components/types/Dica.dart';
import 'package:fatec_internship/components/videos/video_card.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class DicasPage extends StatelessWidget {
  const DicasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(title: "Dicas"),
        backgroundColor: ThemeColors.backgroundColor,
      ),
      body: ListView(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(color: ThemeColors.backgroundColor),
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(24,30,24,0),
                child: SubHeader(
                  titulo: "18 Novos Vídeos 🧑‍🚀",
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: VideoCard(dica: Dica(
                    caminhoImagem: "lib/images/video_thumb.png",
                    nomeDoCanal: "Rafaella Ballerini",
                    caminhoDaFotoDoCanal: "https://yt3.ggpht.com/84ALFuw4UCyfL1TyoMU77D-I6xngPjn2X0kbx2bMAyoFzWwR-utcrbDn_MuNJcroPcmU9NdGGQ=s176-c-k-c0x00ffffff-no-rj-mo",
                    titulo: "Como personalizar o seu perfil no Github (Readme)",
                ),),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: VideoCard(dica: Dica(
                    caminhoImagem: "lib/images/ted_thumbnail.png",
                    nomeDoCanal: "@TED",
                    caminhoDaFotoDoCanal: "https://w7.pngwing.com/pngs/469/902/png-transparent-social-ted-ted-talks-social-media-icon-thumbnail.png",
                    titulo: "Keren Elazari: Hackers: o sistema imunológico da Internet",
                ),),
              ),
            ]),
          ))
        ],
      ),
    );
  }
}
