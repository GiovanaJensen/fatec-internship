import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PatternButton extends StatelessWidget {
  final String buttonTitle;
  final bool hasDialog;
  final Color bgColor;
  const PatternButton({super.key, required this.buttonTitle, required this.hasDialog, required this.bgColor});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: ThemeColors.primaryColor,
      ),
      child: const Text(
        "Ver detalhes",
        style: TextStyle(
            color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
      ),
    );
  }
}
