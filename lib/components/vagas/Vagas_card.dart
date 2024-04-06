import 'package:fatec_internship/components/vagas/Vagas.footer.dart';
import 'package:fatec_internship/components/vagas/Vagas_content.dart';
import 'package:fatec_internship/components/vagas/Vagas_header.dart';
import 'package:flutter/material.dart';

class VagasCard extends StatelessWidget {
  const VagasCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VagasHeader(),
            VagasContent(),
            VagasFooter()
          ],
        ),
      ),
    );
  }
}