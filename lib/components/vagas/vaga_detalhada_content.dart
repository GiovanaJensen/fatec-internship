import 'package:fatec_internship/components/botoes/button.dart';
import 'package:fatec_internship/components/types/Vaga.dart';
import 'package:fatec_internship/components/vagas/Vagas_header.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagaDetalhadaContent extends StatelessWidget {
  final Vaga vaga;
  const VagaDetalhadaContent({super.key, required this.vaga});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(vaga.tituloVaga),
          VagasHeader(
              empresa: vaga.empresa,
              caminhoLogoEmpresa: vaga.caminhoLogoEmpresa,
              isFavorito: vaga.isFavorito),
          const PatternButton(
              buttonTitle: "Candidatar-se",
              hasDialog: true,
              bgColor: ThemeColors.primaryColor),
          const DescricaoVaga(),
        ],
      ),
    );
  }
}

class DescricaoVaga extends StatelessWidget {
  const DescricaoVaga({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text("Descrição da vaga"), SizedBox(height: 12),Text("Estamos em busca de um estagiário apaixonado por design e desenvolvimento web para se juntar à nossa equipe.Como estagiário em desenvolvimento Webflow, você terá a oportunidade de trabalhar em projetos emocionantes, criar sites interativos e responsivos e colaborar com nossa equipe de design e desenvolvimento.")],
    );
  }
}
