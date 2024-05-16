import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagaDetalhadaHeader extends StatelessWidget {
  final int minutos;
  final String local;
  const VagaDetalhadaHeader({super.key, required this.minutos, required this.local});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
              const Icon(Icons.access_time, color: ThemeColors.primaryColor,),
              const SizedBox(width: 4,),
              Text("Há $minutos min")
          ],
        ),
        Row(
          children: [
              const Icon(Icons.location_on_outlined, color: ThemeColors.primaryColor,),
              const SizedBox(width: 4,),
              Text(local)
          ],
        )
      ],
    );
  }
}
