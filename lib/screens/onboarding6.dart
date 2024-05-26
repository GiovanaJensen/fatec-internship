import 'package:flutter/material.dart';
import 'package:fatec_internship/screens/onboarding7.dart';
import 'package:fatec_internship/components/botoes/tagbutton.dart';
import 'package:fatec_internship/components/botoes/my_signIn_button.dart';
import 'package:fatec_internship/themes/theme_colors.dart';

class onboarding6 extends StatefulWidget {
  const onboarding6({super.key});

  @override
  _Onboarding6State createState() => _Onboarding6State();
}

class _Onboarding6State extends State<onboarding6> {
  final List<String> _skills = [
    "Analítico",
    "Criativo",
    "Lógico",
    "Extrovertido",
    "Corajoso",
    "Calmo",
    "Líder",
    "Estratégico"
  ];

  List<bool> _selected = List.generate(8, (_) => false); // Variável de seleção

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColorOnBoarding,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset('lib/images/small-logo-fatec.png'),
                SizedBox(height: 40), // Ajuste para espaçamento
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "Marque suas principais habilidades",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Wrap(
                  spacing: 8.0, // Espaçamento horizontal entre as tags
                  runSpacing: 4.0, // Espaçamento vertical entre as linhas
                  alignment: WrapAlignment.center, // Alinhamento central
                  children: List.generate(_skills.length, (index) {
                    return TagButton(
                      tagTitle: _skills[index], // Títulos das tags
                      isSelected: _selected[index],
                      onSelected: () {
                        setState(() {
                          _selected[index] = !_selected[index];
                        });
                      },
                    );
                  }),
                ),
                SizedBox(height: 32),
                SignInButton(
                  text: "Continuar",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => onboarding7()),
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
