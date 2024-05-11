import 'package:fatec_internship/components/dropdown.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class SubHeader extends StatefulWidget {
  final String titulo;
  const SubHeader({super.key, required this.titulo});

  @override
  State<SubHeader> createState() => _SubHeaderState();
}

class _SubHeaderState extends State<SubHeader> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: const BoxDecoration(color: ThemeColors.backgroundColor),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          widget.titulo,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const DropdownButtonElement(),
      ]),
    );
  }
}
