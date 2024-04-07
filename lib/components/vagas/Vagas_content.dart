import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasContent extends StatelessWidget {
  final String titulo;
  final String local;
  final int minutos;
  const VagasContent({super.key, required this.titulo, required this.local, required this.minutos});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titulo, style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: ThemeColors.textColor,
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Text>[
              Text(titulo, style: Theme.of(context).textTheme.bodySmall,),
              Text("há $minutos min", style: Theme.of(context).textTheme.bodySmall,),
            ],
          )
        ],
      ),
    );
  }
}