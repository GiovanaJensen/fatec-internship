import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasContent extends StatelessWidget {
  const VagasContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Web Designer/Webflow", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: ThemeColors.textColor,
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("SANTOS/SP", style: Theme.of(context).textTheme.bodySmall,),
              Text("há 3 min", style: Theme.of(context).textTheme.bodySmall,),
            ],
          )
        ],
      ),
    );
  }
}