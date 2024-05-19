import 'package:fatec_internship/components/botoes/my_signIn_button.dart';
import 'package:fatec_internship/components/my_textField.dart';
import 'package:fatec_internship/screens/esqueci_senha.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // final Function()? onTap;
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //constrollers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void onTap() {
    Navigator.pushNamed(context, '/register');
  }

  //sign user in
  void signUserIn() async {
    //loading circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    //try sign user in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading cicrcle
      Navigator.pop(context);

      // show Home Page
      Navigator.pushReplacementNamed(context, '/home');
    } on FirebaseAuthException catch (e) {
      // pop the loading cicrcle
      Navigator.pop(context);
      showErrorMessage("Opaa! Email ou senha inválidos!");
    }
  }

  //email errado
  void showErrorMessage(String errorMessage) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(errorMessage),
        );
      },
    );
  }

  void voltar(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColorOnBoarding,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //logo
                Image.asset('lib/images/logo-fatec.png'),
                const SizedBox(
                  height: 50,
                ),

                const SizedBox(height: 25),

                //username textfield
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Insira seu email*",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                MyTextField(
                  controller: emailController,
                  hintText: 'EX: seuemail@fatec.sp.gov.br',
                  obscureText: false,
                ),

                const SizedBox(
                  height: 10,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Senha de 8 digitos*",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: "****************",
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.pushReplacementNamed(context, '/esqueci-senha')
                        },
                        child: const Text(
                          "Esqueceu a senha?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: voltar,
                          child: const Text(
                          'Voltar',
                          style: TextStyle(color: Colors.white),
                      )),
                      SignInButton(
                        text: "Entrar",
                        onTap: signUserIn,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
