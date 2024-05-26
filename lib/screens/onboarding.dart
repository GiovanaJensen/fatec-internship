import 'package:fatec_internship/screens/onboarding1.dart';
import 'package:fatec_internship/screens/onboarding2.dart';
import 'package:fatec_internship/screens/onboarding3.dart';
import 'package:fatec_internship/screens/onboarding4.dart';
import 'package:fatec_internship/screens/onboarding5.dart';
import 'package:fatec_internship/screens/onboarding6.dart';
import 'package:fatec_internship/screens/onboarding7.dart';
import 'package:fatec_internship/screens/onboarding8.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override // Garantir que o @override esteja presente para o método build
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColorOnBoarding,
      body: PageView(
        children: [
          const Center(
            child: onboarding1(),
          ),
          Center(
            child: onboarding2(),
          ),
          Center(
            child: onboarding3(),
          ),
          Center(
            child: onboarding4(),
          ),
          Center(
            child: onboarding5(),
          ),
          Center(
            child: onboarding6(),
          ),
          Center(
            child: onboarding7(),
          ),
          Center(
            child: onboarding8(),
          )
        ],
      ),
    );
  }
}
