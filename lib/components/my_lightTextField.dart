import 'package:flutter/material.dart';

class MyLightTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final int maxLines;

  const MyLightTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.maxLines = 1, // Padrão para 1 linha, pode ser configurado
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        maxLines: maxLines,
        style: const TextStyle(color: Color(0xFF4E4B59), fontSize: 12),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xB34E4B59), fontSize: 12),
        ),
      ),
    );
  }
}
