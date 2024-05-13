import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final int productIndex;
  const ProductDetailsPage({Key? key, required this.productIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes do Produto')),
      body: Center(
        child: Text('Exibindo detalhes para o produto índice: $productIndex'),
      ),
    );
  }
}