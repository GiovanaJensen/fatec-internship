import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasHeader extends StatelessWidget {
  const VagasHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Row(
            children: [
              Image.network(
                "https://cdn.icon-icons.com/icons2/2108/PNG/512/google_icon_130924.png", 
                width: 25, 
                height: 25,
              ),
              Text("Google", style: TextStyle(
                fontSize: 14,
                color: ThemeColors.textColor
              ),)
            ],
          ),
        ),
        Icon(Icons.bookmark_outline_outlined)
      ],
    );
  }
}