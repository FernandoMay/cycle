import 'package:flutter/material.dart';
import 'model.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
    );
  }
}
