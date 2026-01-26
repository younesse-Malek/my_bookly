import 'package:flutter/material.dart';

class CoustomAppBarDetails extends StatelessWidget {
  const CoustomAppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.close, size: 33)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, size: 28)),
      ],
    );
  }
}
