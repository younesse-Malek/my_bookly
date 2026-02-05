import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoustomAppBarDetails extends StatelessWidget {
  const CoustomAppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.close, size: 33),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, size: 28)),
      ],
    );
  }
}
