import 'package:fatec_internship/screens/auth_page.dart';
import 'package:fatec_internship/screens/dicas_page.dart';
import 'package:fatec_internship/screens/esqueci_senha.dart';
import 'package:fatec_internship/screens/home.dart';
import 'package:fatec_internship/screens/login_page.dart';
import 'package:fatec_internship/screens/news.dart';
import 'package:fatec_internship/screens/onboarding.dart';
import 'package:fatec_internship/screens/profile_page.dart';
import 'package:fatec_internship/screens/register_page.dart';
import 'package:fatec_internship/screens/vagas_page.dart';
import 'package:fatec_internship/themes/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        '/onboarding': (context) => const Onboarding(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => const HomePage(),
        '/vagas': (context) => const VagasPage(),
        '/dicas': (context) => const DicasPage(),
        '/esqueci-senha': (context) => EsqueciSenha(),
        '/news': (context) => const NewsPage(),
        '/perfil': (context) => const ProfilePage()
      },
    );
  }
}