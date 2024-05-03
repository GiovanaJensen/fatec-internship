import 'package:fatec_internship/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class NovidadesDaSemana extends StatefulWidget {
  const NovidadesDaSemana({super.key});

  @override
  State<NovidadesDaSemana> createState() => _NovidadesDaSemanaState();
}

class _NovidadesDaSemanaState extends State<NovidadesDaSemana> {
  int currentIndex = 0;
  final PageController controller = PageController();
  List<String> images = [
    "lib/images/oportunidade-exterior.png",
    "lib/images/vagas-estagio.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 170,
          width: double.infinity,
          child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, index) {
                return SizedBox(
                    height: 170,
                    width: double.infinity,
                    child: Image.asset(
                      images[index % images.length],
                      fit: BoxFit.cover,
                    ));
              }),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(color: ThemeColors.primaryColor, borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                  onPressed: () {
                    controller.jumpToPage(currentIndex - 1);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new), color: Colors.white,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < images.length; i++)
                  buildIndicator(currentIndex == i)
              ],
            ),
            Container(
              decoration: BoxDecoration(color: ThemeColors.primaryColor, borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                  onPressed: () {
                    controller.jumpToPage(currentIndex + 1);
                  },
                  icon: const Icon(Icons.arrow_forward_ios), color: Colors.white,),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        height: isSelected ? 12 : 8,
        width: isSelected ? 12 : 8,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? ThemeColors.primaryColor : Colors.grey),
      ),
    );
  }
}
