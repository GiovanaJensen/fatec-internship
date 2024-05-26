import 'package:fatec_internship/components/popup_oberservacao.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PatternButtonHome extends StatefulWidget {
  final String buttonTitle, path;
  final bool hasDialog;
  final Color bgColor;
  const PatternButtonHome({
    super.key,
    required this.path,
    required this.buttonTitle,
    required this.hasDialog,
    required this.bgColor,
  });

  @override
  State<PatternButtonHome> createState() => _PatternButtonHomeState();
}

class _PatternButtonHomeState extends State<PatternButtonHome> {
  void handleTap() {
    if (widget.hasDialog) {
      showDialog(
        context: context,
        builder: (context) {
          return const DialogBox();
        },
      );
    } else {
      Navigator.pushReplacementNamed(context, widget.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: handleTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: widget.bgColor,
      ),
      child: Text(
        widget.buttonTitle,
        style: TextStyle(
          color: widget.bgColor == ThemeColors.primaryColor
              ? Colors.white
              : Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
