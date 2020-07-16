import 'package:flutter/material.dart';

import 'package:demo_project/models/model.dart';

class ResultPage extends StatelessWidget {
  final Model model;
  ResultPage({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(model.productId),
            Text(model.productName),
            Text(model.manufactureName),
            Text(model.model),
            Text(model.price),
            Text(model.description),
            Text(model.inStock),
          ],
        ),
      ),
    );
  }
}
