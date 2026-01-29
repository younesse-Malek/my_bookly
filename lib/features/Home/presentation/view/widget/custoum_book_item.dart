import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/assets.dart';

class CustoumBookimage extends StatelessWidget {
  const CustoumBookimage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testimage),
          ),
        ),
      ),
    );
  }
}
