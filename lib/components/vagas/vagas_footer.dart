import 'package:fatec_internship/components/botoes/button.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasFooter extends StatelessWidget {
  const VagasFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PatternButton(
          buttonTitle: "Ver detalhes",
          hasDialog: false,
          bgColor: ThemeColors.primaryColor,
                ),
      ],
    );
  }
}
