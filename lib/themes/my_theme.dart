import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: ThemeColors.primaryColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      color: ThemeColors.textColor,
      fontSize: 12
    )
  )
);