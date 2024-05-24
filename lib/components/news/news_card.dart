import 'package:fatec_internship/components/news/news_content.dart';
import 'package:fatec_internship/components/news/news_header.dart';
import 'package:fatec_internship/components/vagas/Vagas_header.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String empresa, caminhoLogoEmpresa, titulo;
  final int minutos;
  const NewsCard({super.key, required this.empresa, required this.caminhoLogoEmpresa, required this.titulo, required this.minutos});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,  
      children: [
        NewsHeader(
            empresa: empresa,
            caminhoLogoEmpresa: caminhoLogoEmpresa,
            minutos: minutos),
        SizedBox(height: 16),
        NewsContent(titulo: titulo)
      ]),
    );
  }
}