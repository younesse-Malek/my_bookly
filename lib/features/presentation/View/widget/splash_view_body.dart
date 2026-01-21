import 'package:flutter/material.dart';
import 'package:my_bookly/Core/Utils/assets.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        Center(
          child: Text(
            'Read Free Books',
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
