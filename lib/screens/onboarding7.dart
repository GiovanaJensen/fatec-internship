import 'package:flutter/material.dart';
import 'package:fatec_internship/components/botoes/tagbutton.dart';
import 'package:fatec_internship/components/botoes/my_signIn_button.dart';
import 'package:fatec_internship/screens/onboarding8.dart';
import 'package:fatec_internship/themes/theme_colors.dart';

class onboarding7 extends StatefulWidget {
  const onboarding7({super.key});

  @override
  _Onboarding7State createState() => _Onboarding7State();
}

class _Onboarding7State extends State<onboarding7> {
  final List<String> _skills = [
    "Front-End",
    "Back-End",
    "Data Science",
    "FullStack",
    "Bitcoin Mining",
    "Azure",
    "Cloud",
    "Security"
  ];

  List<bool> _selected = List.generate(8, (_) => false);

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
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "Marque as áreas que você tem interesse",
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
                  spacing: 8.0,
                  runSpacing: 4.0,
                  alignment: WrapAlignment.center,
                  children: List.generate(_skills.length, (index) {
                    return TagButton(
                      tagTitle: _skills[index],
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
                      MaterialPageRoute(builder: (context) => onboarding8()),
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
