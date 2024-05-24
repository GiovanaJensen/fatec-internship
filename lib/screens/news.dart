import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/components/news/news_card.dart';
import 'package:fatec_internship/components/sub_header.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(title: "News"),
        backgroundColor: ThemeColors.backgroundColor,
      ),
      body: ListView(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: ThemeColors.backgroundColor),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 37.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: SubHeader(titulo: "18 Notificações 🔔"),
                  ),
                  SizedBox(height: 46),
                  NewsCard(empresa: "Amazon", caminhoLogoEmpresa: "lib/images/amazon_icon.png", titulo: "Front-end developer", minutos: 3,),
                  SizedBox(height: 8),
                  NewsCard(empresa: "Google", caminhoLogoEmpresa: "lib/images/google_icon.png", titulo: "Webflow developer", minutos: 5,),
                  SizedBox(height: 8),
                  NewsCard(empresa: "Microsoft", caminhoLogoEmpresa: "lib/images/microsoft_icon.png", titulo: "Back-end developer", minutos: 6,),
                  SizedBox(height: 8),
                  NewsCard(empresa: "Amazon", caminhoLogoEmpresa: "lib/images/amazon_icon.png", titulo: "Mobile developer", minutos: 13),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
