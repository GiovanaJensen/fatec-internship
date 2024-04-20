import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(120)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ThemeColors.primaryColor),
                    child: const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 11,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Text.rich(TextSpan(
                        text: "100",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " pontos",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ])),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
