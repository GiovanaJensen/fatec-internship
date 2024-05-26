import 'package:fatec_internship/screens/login_page.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class LoginNavigation extends StatefulWidget {
  final String text;
  final bool isLogin;
  const LoginNavigation({super.key, required this.text, required this.isLogin});

  @override
  State<LoginNavigation> createState() => _LoginNavigationState();
}

class _LoginNavigationState extends State<LoginNavigation> {
  void onTap() {
    if (widget.isLogin) {
      Navigator.pushNamed(context, "/login");
    } else {
      Navigator.pushNamed(context, '/onboarding');
    }
  }

  Color backgroundColor(){
    if(widget.isLogin){
      return ThemeColors.primaryColor;
    }else{
      return ThemeColors.backgroundColorOnBoarding;
    }
  }

  Border borderColor(){
    if(widget.isLogin){
      return Border.all(color: ThemeColors.primaryColor);
    }else{
      return Border.all(color: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 60),
          // margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: backgroundColor(),
              border: borderColor(),
              borderRadius: BorderRadius.circular(120)),
          child: Text(
            widget.text,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
