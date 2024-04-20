import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/components/sub_header.dart';
import 'package:fatec_internship/components/vagas/Vagas_card.dart';
import 'package:fatec_internship/components/videos/video_card.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Header(title: "Home"), backgroundColor: ThemeColors.backgroundColor,),
      body: ListView(
        children: [Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: ThemeColors.backgroundColor
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: SubHeader(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Text("Top últimas vagas", style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: VagasCard(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text("Vídeos populares", style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: VideoCard(),
                  )
                ],
              ),
            ),
          ),
        ),]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
        ]
      ),
    );
  }
}