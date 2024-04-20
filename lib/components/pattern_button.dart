import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PatternButton extends StatelessWidget {
  final String buttonTitle;
  const PatternButton({super.key, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        style:ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ThemeColors.primaryColor,
        ),
        child: Text(buttonTitle, style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}