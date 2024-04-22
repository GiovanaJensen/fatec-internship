import 'package:fatec_internship/components/button.dart';
import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        width: 300,
        height: 250,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Opa! Uma observação", style: TextStyle(
              color: Color.fromRGBO(78, 75, 89, 1),
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Text("Ao confirmar a ação você será direcionado para uma página fora da aplicação, deseja continuar?", style: Theme.of(context).textTheme.bodySmall,),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PatternButton(buttonTitle: "Continuar", hasDialog: false, bgColor: ThemeColors.primaryColor,),
                PatternButton(buttonTitle: "Cancelar", hasDialog: false, bgColor: Color.fromRGBO(244, 244, 244, 1))
              ],
            )
          ],
        ),
      ),
    );
  }
}