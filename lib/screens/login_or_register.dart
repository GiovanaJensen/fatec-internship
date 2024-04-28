import 'package:fatec_internship/components/botoes/login_navigation.dart';
import 'package:fatec_internship/screens/login_page.dart';
import 'package:fatec_internship/screens/register_page.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //inicialmente mostrar pagina de Login
  bool showLoginPage = true;

  //alternar entre login e sign up
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColorOnBoarding,
      body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/images/logo-fatec.png'),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Seja bem-vindo ao",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const Text(
                  "Fatec Internship",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const SizedBox(height: 32),
                const LoginNavigation(text: "Fazer Login", isLogin: true,),
                const SizedBox(height: 8,),
                const LoginNavigation(text: "Criar uma conta", isLogin: false,),
                const SizedBox(height: 32,),
                Image.asset('lib/images/combo-logos.png'),
              ])),
    );
  }
}
