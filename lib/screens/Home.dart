import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/components/vagas/Vagas_card.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Header(title: "Home"), backgroundColor: ThemeColors.backgroundColor,),
      body: Container(
        decoration: const BoxDecoration(
          color: ThemeColors.backgroundColor
        ),
        child: const Column(
          children: [
            VagasCard(),
          ],
        ),
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