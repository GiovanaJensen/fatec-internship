import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class onboarding1 extends StatelessWidget {
  const onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColorOnBoarding,
      body: SafeArea(
        // Garante que o conteúdo não seja sobreposto pela barra de status ou outras áreas críticas
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceAround, // Distribui o espaço uniformemente
          children: [
            Image.asset('lib/images/small-logo-fatec.png'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Vamos criar sua conta, vai ser bem rápido e você já terá acesso a vagas de estágio!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Image.asset('lib/images/arrow-png.png')
          ],
        ),
      ),
    );
  }
}
