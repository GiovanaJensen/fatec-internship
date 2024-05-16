import 'package:fatec_internship/components/types/Vaga.dart';
import 'package:fatec_internship/components/vagas/Vagas_card.dart';
import 'package:fatec_internship/screens/vaga_detalhada.dart';
import 'package:flutter/material.dart';

class VagasCardPage extends StatelessWidget {
  final Vaga vaga;
  const VagasCardPage({super.key, required this.vaga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                      onTap: () {
                        // Navigate to the detailed page when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VagaDetalhadaPage(
                              vaga: vaga,
                            ),
                          ),
                        );
                      },
                      child: VagasCard(
                        empresa: vaga.empresa,
                        caminhoLogoEmpresa: vaga.caminhoLogoEmpresa,
                        isFavorito: vaga.isFavorito,
                        tituloVaga: vaga.tituloVaga,
                        local: vaga.local,
                        minutos: vaga.minutos,
                      ),
                    );
  }
}