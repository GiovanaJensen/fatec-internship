import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasFooter extends StatelessWidget {
  const VagasFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       ElevatedButton(
        onPressed: (){},
        style:ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ThemeColors.primaryColor,
        ),
        child: const Text("Ver detalhes", style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500
        ),),
      )
      ],
    );
  }
}