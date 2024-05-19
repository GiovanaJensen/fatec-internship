import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/components/novidadesSemana.dart';
import 'package:fatec_internship/components/sub_header.dart';
import 'package:fatec_internship/components/types/Dica.dart';
import 'package:fatec_internship/components/vagas/Vagas_card.dart';
import 'package:fatec_internship/components/videos/video_card.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //sign user out

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(title: "Home"),
        backgroundColor: ThemeColors.backgroundColor,
        actions: [IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))],
      ),
      body: ListView(children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: ThemeColors.backgroundColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: SubHeader(titulo: "Bem-vindo(a) 👨‍🎓",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0, bottom: 16.0),
                    child: Text(
                      "Novidades da semana",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  const NovidadesDaSemana(),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Text(
                      "Top últimas vagas",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: VagasCard(empresa: "Google", caminhoLogoEmpresa: "lib/images/google_icon.png", isFavorito: false, tituloVaga: "Web Designer/Webflow", local: "Santos/SP", minutos: 3,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Vídeos populares",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: VideoCard(dica: Dica(
                    caminhoImagem: "lib/images/video_thumb.png",
                    nomeDoCanal: "Rafaella Ballerini",
                    caminhoDaFotoDoCanal: "https://yt3.ggpht.com/84ALFuw4UCyfL1TyoMU77D-I6xngPjn2X0kbx2bMAyoFzWwR-utcrbDn_MuNJcroPcmU9NdGGQ=s176-c-k-c0x00ffffff-no-rj-mo",
                    titulo: "Como personalizar o seu perfil no Github (Readme)",
                ),),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.abc),
          label: "News",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trip_origin),
          label: "Vagas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_arrow),
          label: "Palestras",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Perfil",
        ),
      ]),
    );
  }
}
