import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: ThemeColors.primaryColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      color: ThemeColors.textColor,
      fontSize: 14,
      fontWeight: FontWeight.bold
    ),
    bodyLarge: TextStyle(
      color: ThemeColors.textColor,
      fontSize: 18
    ),
    bodySmall: TextStyle(
      color: ThemeColors.textColor,
      fontSize: 12
    )
  )
);