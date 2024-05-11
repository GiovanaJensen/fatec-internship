import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/components/sub_header.dart';
import 'package:fatec_internship/components/types/Vaga.dart';
import 'package:fatec_internship/components/vagas/Vagas_card.dart';
import 'package:fatec_internship/screens/vaga_detalhada.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasPage extends StatelessWidget {
  const VagasPage({super.key});

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
                      child: SubHeader(
                        titulo: "18 Novas Vagas ✍️",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the detailed page when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VagaDetalhadaPage(
                              vaga: Vaga(
                                empresa: "Google",
                                caminhoLogoEmpresa:
                                    "lib/images/google_icon.png",
                                isFavorito: false,
                                tituloVaga: "Web Designer/Webflow",
                                local: "Santos/SP",
                                minutos: 3,
                              ),
                            ),
                          ),
                        );
                      },
                      child: const VagasCard(
                        empresa: "Google",
                        caminhoLogoEmpresa: "lib/images/google_icon.png",
                        isFavorito: false,
                        tituloVaga: "Web Designer/Webflow",
                        local: "Santos/SP",
                        minutos: 3,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ]),
            ),
          ))
        ],
      ),
    );
  }
}
