import 'package:fatec_internship/components/vagas/Vagas_content.dart';
import 'package:fatec_internship/components/vagas/Vagas_header.dart';
import 'package:fatec_internship/components/vagas/vagas_footer_home.dart';
import 'package:flutter/material.dart';

class VagasCardHome extends StatelessWidget {
  final String empresa, caminhoLogoEmpresa, tituloVaga, local;
  final bool isFavorito;
  final int minutos;
  const VagasCardHome(
      {super.key,
      required this.empresa,
      required this.tituloVaga,
      required this.local,
      required this.isFavorito,
      required this.minutos,
      required this.caminhoLogoEmpresa});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VagasHeader(
            empresa: empresa,
            isFavorito: isFavorito,
            caminhoLogoEmpresa: caminhoLogoEmpresa,
          ),
          VagasContent(
            titulo: tituloVaga,
            local: local,
            minutos: minutos,
          ),
          const VagasFooterHome(),
        ],
      ),
    );
  }
}
