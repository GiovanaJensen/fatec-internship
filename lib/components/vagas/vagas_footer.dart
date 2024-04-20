import 'package:fatec_internship/components/pattern_button.dart';
import 'package:flutter/material.dart';

class VagasFooter extends StatelessWidget {
  const VagasFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       PatternButton(buttonTitle: "Ver detalhes",),
      ],
    );
  }
}