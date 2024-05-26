import 'package:flutter/material.dart';
import 'package:fatec_internship/components/botoes/my_signIn_button.dart';
import 'package:fatec_internship/screens/Home.dart';
import 'package:fatec_internship/themes/theme_colors.dart';

class onboarding8 extends StatelessWidget {
  const onboarding8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors
          .backgroundColorOnBoarding, // Mantém a consistência de cor de fundo
      body: SafeArea(
        child: Center(
          child: Container(
            width: 300, // Ajuste a largura conforme necessário
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color:
                  Color.fromARGB(100, 52, 52, 52), // Cor de fundo do container
              borderRadius: BorderRadius.circular(10), // Borda arredondada
            ),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Ocupa apenas o espaço necessário
              children: <Widget>[
                Icon(
                  Icons.check_circle_outline, // Ícone de verificação
                  color:
                      const Color.fromARGB(70, 255, 255, 255), // Cor do ícone
                  size: 32, // Tamanho do ícone ajustado para maior visibilidade
                ),
                SizedBox(height: 24), // Espaçamento entre ícone e texto
                Text(
                  "Você concluiu o cadastro com sucesso!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:
                        24, // Tamanho do texto ajustado para melhor legibilidade
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 32), // Espaçamento entre texto e botão
                SignInButton(
                  text: "Continuar",
                  onTap: () {
                    Navigator.pushReplacement(
                      // Muda para 'pushReplacement' para evitar retorno ao onboarding
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
