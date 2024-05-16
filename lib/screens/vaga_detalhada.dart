import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/components/sub_header.dart';
import 'package:fatec_internship/components/types/Vaga.dart';
import 'package:fatec_internship/components/vagas/vaga_detalhada_content.dart';
import 'package:fatec_internship/components/vagas/vaga_detalhada_header.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagaDetalhadaPage extends StatelessWidget {
  final Vaga vaga;
  const VagaDetalhadaPage({super.key, required this.vaga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(title: "Vagas"),
        backgroundColor: ThemeColors.backgroundColor,
      ),
      body: ListView(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(color: ThemeColors.backgroundColor),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24,30,24,0),
                    child: VagaDetalhadaHeader(minutos: vaga.minutos, local: vaga.local,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24,26,24,0),
                    child: VagaDetalhadaContent(vaga: vaga),
                  )
                ]),
          ))
        ],
      ),
    );
  }
}
