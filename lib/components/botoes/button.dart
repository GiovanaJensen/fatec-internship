import 'package:fatec_internship/components/popup_oberservacao.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PatternButton extends StatefulWidget {
  final String buttonTitle;
  final bool hasDialog;
  final Color bgColor;
  const PatternButton(
      {super.key,
      required this.buttonTitle,
      required this.hasDialog,
      required this.bgColor,
      });

  @override
  State<PatternButton> createState() => _PatternButtonState();
}

class _PatternButtonState extends State<PatternButton> {
  void observacao() {
    if (widget.hasDialog) {
      showDialog(
          context: context,
          builder: (context) {
            return DialogBox();
          }
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: observacao,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: widget.bgColor,
      ),
      child: Text(
        widget.buttonTitle,
        style: TextStyle(
            color: widget.bgColor == ThemeColors.primaryColor ? Colors.white : Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
      ),
    );
  }
}
