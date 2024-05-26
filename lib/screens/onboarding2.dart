import 'package:flutter/material.dart';
import 'package:fatec_internship/components/botoes/my_signIn_button.dart';
import 'package:fatec_internship/components/my_textField.dart';
import 'package:fatec_internship/screens/onboarding3.dart';
import 'package:fatec_internship/themes/theme_colors.dart'; // Assegure-se que este import esteja correto

class onboarding2 extends StatelessWidget {
  onboarding2({super.key});

  final TextEditingController raController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeColors.backgroundColorOnBoarding, // Cor de fundo consistente
      body: SafeArea(
        // Garante que o conteúdo não seja sobreposto
        child: SingleChildScrollView(
          // Permite a rolagem da tela
          child: Padding(
            // Padding geral para um layout mais limpo
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, // Distribui o espaço uniformemente
              children: [
                Image.asset('lib/images/small-logo-fatec.png'),
                SizedBox(height: 40), // Espaçamento ajustado
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "Comece digitando seu RA da Fatec",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                MyTextField(
                    controller: raController,
                    hintText: 'EX: 0050832211005',
                    obscureText: false),
                SizedBox(height: 32),
                SignInButton(
                  text: "Continuar",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => onboarding3()),
                  ),
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
