import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:fatec_internship/components/botoes/my_signIn_button.dart';
import 'package:fatec_internship/components/my_textField.dart';
import 'package:fatec_internship/screens/onboarding4.dart';

// ignore: camel_case_types
class onboarding3 extends StatelessWidget {
  onboarding3({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColorOnBoarding,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('lib/images/small-logo-fatec.png'),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "Como devemos te chamar?",
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
                    controller: nameController,
                    hintText: 'EX: João Vitor da Silva',
                    obscureText: false),
                SizedBox(height: 32),
                SignInButton(
                  text: "Continuar",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => onboarding4()),
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
