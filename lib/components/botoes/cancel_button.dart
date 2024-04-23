import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  final String buttonTitle;
  final Color bgColor;
  const CancelButton({super.key, required this.buttonTitle, required this.bgColor});

  void voltar(BuildContext context){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => voltar(context),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bgColor,
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(
            color: bgColor == ThemeColors.primaryColor ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
      ),
    );
  }
}