import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class NewsContent extends StatelessWidget {
  final String titulo;
  const NewsContent({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: ThemeColors.textColor,
      ),
      textAlign: TextAlign.start,
    );
  }
}
