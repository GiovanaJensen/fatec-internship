import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class VagasHeader extends StatefulWidget {
  bool isFavorito;
  final String caminhoLogoEmpresa;
  final String empresa;
  VagasHeader({super.key, required this.empresa, required this.caminhoLogoEmpresa,required this.isFavorito});
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
                widget.caminhoLogoEmpresa,
                width: 25,
                height: 25,
              ),
              const SizedBox(width: 4.5,),
              Text(
                widget.empresa,
                style:
                    const TextStyle(fontSize: 14, color: ThemeColors.textColor),
              )
            ],
          ),
          GestureDetector(
              onTap: favoritar,
              child: (widget.isFavorito)
                  ? const Icon(Icons.bookmark)
                  : const Icon(Icons.bookmark_outline_outlined))
        ]);
  }
}
