import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/components/sub_header.dart';
import 'package:fatec_internship/components/types/Vaga.dart';
import 'package:fatec_internship/components/vagas/vaga_detalhada_content.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    const SizedBox(
                      height: 46,
                    ),
                    VagaDetalhadaContent(vaga: vaga)
                  ]),
            ),
          ))
        ],
      ),
    );
  }
}
