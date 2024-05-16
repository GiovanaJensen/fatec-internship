import 'package:fatec_internship/components/botoes/button.dart';
import 'package:fatec_internship/components/types/Vaga.dart';
import 'package:fatec_internship/components/vagas/Vagas_header.dart';
import 'package:fatec_internship/themes/my_theme.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagaDetalhadaContent extends StatelessWidget {
  final Vaga vaga;
  const VagaDetalhadaContent({super.key, required this.vaga});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(vaga.tituloVaga, style: const TextStyle(fontWeight: FontWeight.bold, color: ThemeColors.textColor, fontSize: 16),),
            ],
          ),
          const SizedBox(height: 24,),
          VagasHeader(
              empresa: vaga.empresa,
              caminhoLogoEmpresa: vaga.caminhoLogoEmpresa,
              isFavorito: vaga.isFavorito),
          const SizedBox(height: 24,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PatternButton(
                  buttonTitle: "Candidatar-se",
                  hasDialog: true,
                  bgColor: ThemeColors.primaryColor),
            ],
          ),
          const SizedBox(height: 24),
          const _DescricaoVaga(),
          const SizedBox(height: 24),
          const _Responsabilidades(),
          const SizedBox(height: 24),
          const _RequisitosVaga()
        ],
      ),
    );
  }
}

class _DescricaoVaga extends StatelessWidget {
  const _DescricaoVaga({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Descrição da vaga", style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(height: 12),
        const Text(
            "Estamos em busca de um estagiário apaixonado por design e desenvolvimento web para se juntar à nossa equipe.Como estagiário em desenvolvimento Webflow, você terá a oportunidade de trabalhar em projetos emocionantes, criar sites interativos e responsivos e colaborar com nossa equipe de design e desenvolvimento.")
      ],
    );
  }
}

class _Responsabilidades extends StatelessWidget {
  const _Responsabilidades({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Responsabilidades:", style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 12),
        const Text('\u2022 Desenvolver sites utilizando a plataforma Webflow'),
        const Text('\u2022 Colaborar com a equipe de design para transformar conceitos em páginas web atraentes.'),
        const Text('\u2022 Garantir a funcionalidade e a responsividade dos sites.'),
        const Text('\u2022 Manter-se atualizado com as tendências de design e desenvolvimento web.'),
      ],
    );
  }
}

class _RequisitosVaga extends StatelessWidget {
  const _RequisitosVaga({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Requisitos:", style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 12),
        const Text('\u2022 Conhecimento básico em Webflow.'),
        const Text('\u2022 Paixão por design e usabilidade.'),
        const Text('\u2022 Habilidade para trabalhar em equipe e aprender rapidamente.'),
      ],
    );
  }
}