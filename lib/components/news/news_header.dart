import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class NewsHeader extends StatelessWidget {
  final String caminhoLogoEmpresa, empresa;
  final int minutos; 
  const NewsHeader({super.key, required this.empresa, required this.caminhoLogoEmpresa, required this.minutos});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.network(
                caminhoLogoEmpresa,
                width: 25,
                height: 25,
              ),
              const SizedBox(width: 4.5,),
              Text(
                empresa,
                style:
                    const TextStyle(fontSize: 14, color: ThemeColors.textColor),
              )
            ],
          ),
          Text("há ${minutos} min", style: const TextStyle(fontSize: 14, color: ThemeColors.textColor),)
        ]);
  }
}