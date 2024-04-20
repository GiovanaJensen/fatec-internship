import 'package:fatec_internship/components/dropdown.dart';
import 'package:fatec_internship/themes/my_theme.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class SubHeader extends StatefulWidget {
  const SubHeader({super.key});

  @override
  State<SubHeader> createState() => _SubHeaderState();
}

class _SubHeaderState extends State<SubHeader> {
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37.0),
      child: Container(
        decoration: const BoxDecoration(color: ThemeColors.backgroundColor),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Bem-vindo(a) 👨‍🎓",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          DropdownButtonElement(),
        ]),
      ),
    );
  }
}