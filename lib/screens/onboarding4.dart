import 'package:flutter/material.dart';
import 'package:fatec_internship/components/botoes/my_signIn_button.dart';
import 'package:fatec_internship/components/my_textField.dart';
import 'package:fatec_internship/screens/onboarding5.dart';
import 'package:fatec_internship/themes/theme_colors.dart';

class onboarding4 extends StatelessWidget {
  onboarding4({super.key});

  final TextEditingController emailController =
      TextEditingController(); // Controller para o campo de email

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors
          .backgroundColorOnBoarding, // Cor de fundo uniforme para o onboarding
      body: SafeArea(
        // Garante que o conteúdo não seja sobreposto pelas barras do sistema
        child: SingleChildScrollView(
          // Permite rolagem quando necessário
          child: Padding(
            // Espaçamento geral para uniformidade
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, // Distribuição uniforme do espaço
              children: [
                Image.asset('lib/images/small-logo-fatec.png'),
                SizedBox(height: 40), // Ajuste no espaçamento
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "Qual é o seu e-mail institucional?",
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
                  controller: emailController,
                  hintText: 'EX: exemplo@fatec.sp.gov.br',
                  obscureText:
                      false, // Garante que o texto não seja obscurecido
                ),
                SizedBox(height: 32),
                SignInButton(
                  text: "Continuar",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => onboarding5()),
                    );
                  },
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
