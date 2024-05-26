import 'package:fatec_internship/components/button_home.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasFooterHome extends StatelessWidget {
  const VagasFooterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PatternButtonHome(
          buttonTitle: "Ver detalhes",
          hasDialog: false,
          path: '/vagas',
          bgColor: ThemeColors.primaryColor,
        ),
      ],
    );
  }
}
