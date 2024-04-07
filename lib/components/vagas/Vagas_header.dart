import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasHeader extends StatefulWidget {
  bool isFavorito;
  final String empresa;
  VagasHeader({super.key, required this.empresa, required this.isFavorito});
  @override
  State<VagasHeader> createState() => _VagasHeaderState();
}

class _VagasHeaderState extends State<VagasHeader> {
  favoritar() {
    setState(() {
      widget.isFavorito = !widget.isFavorito;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Image.network(
              "https://cdn.icon-icons.com/icons2/2108/PNG/512/google_icon_130924.png",
              width: 25,
              height: 25,
            ),
            Text(
              widget.empresa,
              style: TextStyle(fontSize: 14, color: ThemeColors.textColor),
            )
          ],
        ),
        ElevatedButton(
            onPressed: () {
              favoritar();
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            child: (widget.isFavorito)
                ? Icon(Icons.bookmark)
                : Icon(Icons.bookmark_outline_outlined))
      ],
    );
  }
}
